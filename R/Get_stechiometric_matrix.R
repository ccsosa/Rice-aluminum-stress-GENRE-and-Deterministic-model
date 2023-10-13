require(openxlsx);require(readxl);require(vegan);require(xlsx);library(stringr)#;require(purrr);require(stringr); require(strex)


GetStoichiometry <- function(met_dict,rxn_dict,sep_rxn,rxn_ids,bounds,save_xlsx,out_dir,out_name,get_network){
  
  require(openxlsx)
  
  
  if(!save_xlsx %in% c(TRUE,FALSE)){
    stop("save_xlsx must be TRUE or FALSE")
  }
  
  if(isTRUE(save_xlsx) & is.null(out_dir)){
    stop("save_xlsx is active. Therefore the out_dir path must be introduced to save the XLSX file!")
  }
  
  if(is.null(rxn_ids)){
    warning("Reaction ids not provided. Thus, using atuomatic ids, take care!")
  }
  
  #split by separator

message("Obtaining consumed and produced metabolites")
 rxn_dict2 <- rxn_dict#strsplit(rxn_dict,sep_rxn)
 pb <-
   utils::txtProgressBar(min = 0,
                         max = length(rxn_dict2),
                         style = 3)
 
 #i <- 2558
  rxn_dict3 <- lapply(seq_len(length(rxn_dict2)),function(i){
    #i <- 1
    #message(i)
    utils::setTxtProgressBar(pb, i)
    #x <- rxn_dict2[[i]][which(rxn_dict2[[i]]!="+")
    #x <- strsplit(rxn_dict[[i]],"\\+ | -> | <==>")
    x <- trimws(strsplit(rxn_dict[[i]],"->|<=>")[[1]])
    consumed <- x[1]; consumed <- trimws(strsplit(consumed,"\\+")[[1]])
    consumed_j <- lapply(1:length(consumed),function(j){
    
     # message(j)
      x_c <- trimws(strsplit(consumed[[j]]," ")[[1]])
      con_num <- suppressWarnings(as.numeric(x_c[1]))
      if(is.na(con_num)){
        con_num <- 0
      }
      
      if(con_num>0){
        if(!is.null(rxn_ids)){
          df <- data.frame(compound=x_c[2],number=-as.numeric(x_c[1]),rxn=paste0(rxn_ids[[i]]),s="CONSUMPTION")
        } else {
          df <- data.frame(compound=x_c[2],number=-as.numeric(x_c[1]),rxn=paste0("R",i),s="CONSUMPTION")  
        }
        
      } else {
        
        if(!is.null(rxn_ids)){
          df <- data.frame(compound=x_c[1],number=-1,rxn=paste0(rxn_ids[[i]]),s="CONSUMPTION")
        } else {
          df <- data.frame(compound=x_c[1],number=-1,rxn=paste0("R",i),s="CONSUMPTION")
        }
      }
      
      return(df)
      })
    
    consumed_j <- do.call(rbind,consumed_j)
    if(!is.na(x[2])){
    produced <- x[2]; produced <- trimws(strsplit(produced,"\\+")[[1]])

    produced_j <- lapply(1:length(produced),function(j){
      #message(j)
      x_c <- trimws(strsplit(produced[[j]]," ")[[1]])
      con_num <- suppressWarnings(as.numeric(x_c[1]))
      if(is.na(con_num)){
        con_num <- 0
      }
      # if(con_num>0){
      #   df <- data.frame(compound=x_c[2],number=as.numeric(x_c[1]),rxn=paste0("R",i),s="PRODUCTION")
      # } else {
      #   df <- data.frame(compound=x_c[1],number=1,rxn=paste0("R",i),s="PRODUCTION")
      # }
      if(con_num>0){
        if(!is.null(rxn_ids)){
          df <- data.frame(compound=x_c[2],number=as.numeric(x_c[1]),rxn=paste0(rxn_ids[[i]]),s="PRODUCTION")
        } else {
          df <- data.frame(compound=x_c[2],number=as.numeric(x_c[1]),rxn=paste0("R",i),s="PRODUCTION")  
        }
        
      } else {
        
        if(!is.null(rxn_ids)){
          df <- data.frame(compound=x_c[1],number=1,rxn=paste0(rxn_ids[[i]]),s="PRODUCTION")
        } else {
          df <- data.frame(compound=x_c[1],number=1,rxn=paste0("R",i),s="PRODUCTION")
        }
      }
      
      return(df)
    })
    produced_j <- do.call(rbind,produced_j)
    
    df_final <- rbind(consumed_j,produced_j)
    } else {
      df_final <-  consumed_j
    }
    
    return(df_final)
  })
    
  close(pb)
  #coeficient numbers data frame  
  rxn_dict3 <- do.call(rbind,rxn_dict3)
  
  message("obtaining GAMS data frame")
  
  rxn_dict3$GAMS <- paste0("(@",rxn_dict3$compound,"@,",paste0("@",rxn_dict3$rxn,"@)",rxn_dict3$number))
  rxn_dict3$GAMS_FORMAT_N <- paste0("'",rxn_dict3$compound,"'",".",paste0("'",rxn_dict3$rxn,"'"," ",rxn_dict3$number))
  #create the stechoimetric matrix

  message("Creating the stechoimetric matrix")
  
  stech_mat <- matrix(nrow = length(met_dict),ncol=length(rxn_dict))
  #filling with zeros
  stech_mat[] <- 0
  if(is.null(rxn_ids)){
    colnames(stech_mat) <- paste0("R",seq_len(length(rxn_dict)))  
  } else {
    colnames(stech_mat) <- rxn_ids
  }
  
  row.names(stech_mat) <- paste0(met_dict)
  
  message("Final settings over rxns before filling out the stechoimetric matrix")
  #unique compounds
  un_compounds <- unique(rxn_dict3$compound)
  #flling the matrix
  message("Filling out the stechoimetric matrix")
  
  for(i in seq_len(nrow(rxn_dict3))){
    #print(i)
    if(isFALSE(rxn_dict3$compound[[i]] %in% row.names(stech_mat))){
      stop(paste("Add ", rxn_dict3$compound[[i]], " to the stechoimetric matrix and re-run! ","\n",
                 "check this: ",print(rxn_dict3$rxn[i])))
    }
    #print(i)zz
    stech_mat[rxn_dict3$compound[[i]],rxn_dict3$rxn[[i]]] <- rxn_dict3$number[[i]]
  };rm(i)
  
  message("Calculating metabolites summary")
  stech_mat_summary_met <- data.frame(met=paste0("'",row.names(stech_mat),"'"),rxns=NA,count_met=NA,
                                      count_met_pos =NA,count_met_neg=NA,neg_pos_both=NA)
  
  for(i in seq_len(nrow(stech_mat_summary_met))){
    stech_mat_summary_met[i,2] <- paste(rxn_dict3$rxn[which(rxn_dict3$compound==stech_mat_summary_met$met[[i]])],collapse = "//")
    stech_mat_summary_met[i,3] <- length(stech_mat[i,][which(stech_mat[i,]!=0)])
    stech_mat_summary_met[i,4] <- length(stech_mat[i,][which(stech_mat[i,]>0)])
    stech_mat_summary_met[i,5] <- length(stech_mat[i,][which(stech_mat[i,]<0)])
    if(stech_mat_summary_met[i,4]>0 & stech_mat_summary_met[i,5] >0){
      stech_mat_summary_met[i,6] <- 1  
    } else {
      stech_mat_summary_met[i,6] <- 0        
    }
    
  };rm(i)

  message("Calculating rxn summary")
  stech_mat_summary_rxn <- data.frame(rxn_id =colnames(stech_mat),rxn= as.character(rxn_dict2),
                                      count_rxn=NA,count_rxn_pos =NA,count_rxn_neg=NA,neg_pos_both_rxn=NA)
  
  for(i in seq_len(nrow(stech_mat_summary_rxn))){
    stech_mat_summary_rxn[i,3] <- length(stech_mat[,i][which(stech_mat[,i]!=0)])
    stech_mat_summary_rxn[i,4] <- length(stech_mat[,i][which(stech_mat[,i]>0)])
    stech_mat_summary_rxn[i,5] <- length(stech_mat[,i][which(stech_mat[,i]<0)])
    if(stech_mat_summary_rxn[i,4]>0 & stech_mat_summary_rxn[i,5] >0){
      stech_mat_summary_rxn[i,6] <- 1  
    } else {
      stech_mat_summary_rxn[i,6] <- 0        
    }
    
  };rm(i)
  
  
  message("Collecting Frequencies summary")
  summary_freq <- data.frame(SUMMARY=c(rep("Metabolites table",4),rep("Reactions table",4)),
             STATUS = c("Products","Products not used",
                        "Reactives","Reactives not used",
                        "Reactions with products","Reactions without products",
                        "Reactions with reactives","Reactions without reactives"),   
    
  COUNTS=t(data.frame(
  MET_PRODUCT = length(stech_mat_summary_met$count_met_pos[stech_mat_summary_met$count_met_pos>0]),
  MET_NO_PRODUCT = length(stech_mat_summary_met$count_met_pos[stech_mat_summary_met$count_met_pos==0]),
  MET_REACTIVES = length(stech_mat_summary_met$count_met_neg[stech_mat_summary_met$count_met_neg>0]),
  MET_NO_REACTIVES = length(stech_mat_summary_met$count_met_neg[stech_mat_summary_met$count_met_neg==0]),
  PRODUCTS_IN_RXN = length(stech_mat_summary_rxn$count_rxn_pos[stech_mat_summary_rxn$count_rxn_pos>0]),
  NO_PRODUCTS_IN_RXN = length(stech_mat_summary_rxn$count_rxn_pos[stech_mat_summary_rxn$count_rxn_pos==0]),
  REACTIVES_IN_RXN = length(stech_mat_summary_rxn$count_rxn_neg[stech_mat_summary_rxn$count_rxn_neg>0]),
  NO_REACTIVES_IN_RXN = length(stech_mat_summary_rxn$count_rxn_neg[stech_mat_summary_rxn$count_rxn_neg==0])
  
  )))
  
  
  message("Adding metabolite column to the stochiometic matrix")
  stech_mat <- as.data.frame(stech_mat)
  stech_mat$met <- row.names(stech_mat)
  stech_mat <- stech_mat[,c(ncol(stech_mat),1:(ncol(stech_mat)-1))]
  row.names(stech_mat) <- NULL
  
  message("Sorting summaries in ascending order")
  stech_mat_summary_met <- stech_mat_summary_met[order(stech_mat_summary_met$count_met,decreasing = F),]
  stech_mat_summary_rxn <- stech_mat_summary_rxn[order(stech_mat_summary_rxn$count_rxn,decreasing = F),]
  stech_mat_summary_met_problematic <- stech_mat_summary_met[which(stech_mat_summary_met$count_met==1),]
  
  ##############################################################################
  message("final details for GAMS")
  
  if(is.null(rxn_ids)){
    stech_mat_summary_rxn$id_dummy<- gsub(pattern = "R",replacement = "",x = 1:(ncol(stech_mat)-1))  
  } else {
    
    ids_d <- 1:length(rxn_ids)
    ids_i_dummy <- lapply(1:length(rxn_ids),function(i){
      id_d_i <- ids_d*rxn_ids %in% stech_mat_summary_rxn$rxn_id[i]*1
      return(id_d_i[id_d_i!=0])
      })
    ids_i_dummy <- do.call(rbind,ids_i_dummy)
    stech_mat_summary_rxn$id_dummy <- as.numeric(ids_i_dummy)
    }

  
  
  
  stech_mat_summary_rxn$lower_bound <- NA
  stech_mat_summary_rxn$upper_bound <- NA
  stech_mat_summary_rxn$GAMS_lower_bound <- NA
  stech_mat_summary_rxn$GAMS_upper_bound <- NA
  
  
  if(is.null(bounds)){
    warning("Bounds not provided, calculating using reactions directionality")
  }
  
  for(j in 1:nrow(stech_mat_summary_rxn)){
    #j <- 1
    if(is.null(bounds)){
    x_irr <- stringr::str_detect(stech_mat_summary_rxn$rxn[[j]], "->")
    x_rev <- stringr::str_detect(stech_mat_summary_rxn$rxn[[j]], "<=>")

      if(isTRUE(x_irr)){
        stech_mat_summary_rxn$lower_bound[[j]] <- 0
        stech_mat_summary_rxn$upper_bound[[j]] <- 1000
        stech_mat_summary_rxn$GAMS_lower_bound[[j]] <- paste0("'",stech_mat_summary_rxn$rxn_id[[j]],"'",
                                                            " ",
                                                            stech_mat_summary_rxn$lower_bound[[j]] 
                                                            )
      
        stech_mat_summary_rxn$GAMS_upper_bound[[j]] <- paste0("'",stech_mat_summary_rxn$rxn_id[[j]],"'",
                                                            " ",
                                                            stech_mat_summary_rxn$upper_bound[[j]] 
        )
      
      } else if(isTRUE(x_rev)){
        stech_mat_summary_rxn$lower_bound[[j]] <- -1000
        stech_mat_summary_rxn$upper_bound[[j]] <-  1000
        stech_mat_summary_rxn$GAMS_lower_bound[[j]] <- paste0("'",stech_mat_summary_rxn$rxn_id[[j]],"'",
                                                            " ",
                                                            stech_mat_summary_rxn$lower_bound[[j]] 
        )
      
        stech_mat_summary_rxn$GAMS_upper_bound[[j]] <- paste0("'",stech_mat_summary_rxn$rxn_id[[j]],"'",
                                                            " ",
                                                            stech_mat_summary_rxn$upper_bound[[j]])
      }
    } else {
      
      stech_mat_summary_rxn$lower_bound[[j]] <- bounds[j,1]
      stech_mat_summary_rxn$upper_bound[[j]] <-  bounds[j,2]
      stech_mat_summary_rxn$GAMS_lower_bound[[j]] <- paste0("'",stech_mat_summary_rxn$rxn_id[[j]],"'",
                                                            " ",
                                                            stech_mat_summary_rxn$lower_bound[[j]] 
      )
      
      stech_mat_summary_rxn$GAMS_upper_bound[[j]] <- paste0("'",stech_mat_summary_rxn$rxn_id[[j]],"'",
                                                            " ",
                                                            stech_mat_summary_rxn$upper_bound[[j]])
    }
    
  };rm(j)
  
  ##############################################################################}
  if(get_network==T){
    message("saving rxn graph")
    if(save_xlsx==F |is.null(out_dir)){
      stop("activate save_xlsx and provide and out_dir")
    }
    
  stech_mat_graph <- list()
  for(i in 2:ncol(stech_mat)){
    #i <- 5
    x_s <- stech_mat[,1][which(stech_mat[,i]!=0)]

    if(length(x_s)>1){
      x_i_t <- data.frame(t(utils::combn(x_s, 2)), RXN = colnames(stech_mat)[i])
      colnames(x_i_t) <- c("source","target","RXN")
      x_i_t$status <- "rxn with several metabolites"
    } else {
      x_i_t <- data.frame(source=x_s,target=x_s,RXN= colnames(stech_mat)[i])
      x_i_t$status <- "rxn with a unique metabolite"
    }
    stech_mat_graph[[i]] <- x_i_t
    rm(x_i_t)
  }
  
  stech_mat_graph <- do.call(rbind,stech_mat_graph)
  write.csv(stech_mat_graph,paste0(out_dir,"/",out_name,"_graph.csv"),na = "",row.names = F)
  }
  ##############################################################################}
  message("Saving results in a list")
  result_list <- list(stech_matrix = stech_mat, 
                      summary_metabolites = stech_mat_summary_met, 
                      problematic_met=stech_mat_summary_met_problematic,
                      summary_reactions = stech_mat_summary_rxn,                       
                      changes = rxn_dict3,
                      summary_freq=summary_freq)

  
  
  if(isTRUE(save_xlsx)){
    message("Saving results in a XLSX file")
    openxlsx::write.xlsx(result_list, file = paste0(out_dir,"/",out_name,".xlsx"))
  }
  message("DONE!")
  return(result_list)
}



#dir <- "D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/COBRA"
dir <- "D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/COBRA/CYCLES/MANUAL"
#dir <- "D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/COBRA/CYCLES"

# rxn_dict <- readxl::read_xlsx(paste0(dir,"/","TOCOBRA.xlsx"),sheet = "Reaction List")
# rxn_dict <- rxn_dict$Reaction

#rxn_dict <- readxl::read_xlsx("D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/COBRA/TOCOBRA.xlsx",sheet = "Reaction List")
#rxn_dict <- rxn_dict$Reaction

#rxn_dict <- readxl::read_xlsx("D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/COBRA/CYCLES/MANUAL/TOCOBRA_V4AA_FIXED.xlsx",sheet = "Reaction List")


rxn_dict <- readxl::read_xlsx("D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/COBRA/CYCLES/MANUAL/TOCOBRA_V7_G.xlsx",sheet = "Reaction List")
rxn_ids <- rxn_dict$Abbreviation
bounds <- cbind(rxn_dict$`Lower bound`,rxn_dict$`Upper bound`)
#rxn_dict <- readxl::read_xlsx("D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/COBRA/CYCLES/TOCOBRA_V4AA_FIXED.xlsx",sheet = "Reaction List")
rxn_dict <- rxn_dict$Reaction

################################################################################
##RUN FOR CYCLES
# rxn_dict1 <- rxn_dict[which(rxn_dict$minimum < -900),]
# rxn_dict2 <- rxn_dict[which(rxn_dict$maximum > 900),]
# rxn_dict_t <- unique(c(rxn_dict1$Abbreviation,rxn_dict2$Abbreviation))
#rxn_dict <- rxn_dict$Reaction[rxn_dict$Abbreviation %in% rxn_dict_t]


#met_dict <- readxl::read_xlsx("D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/COBRA/CYCLES/MANUAL/TOCOBRA_V4AA_FIXED.xlsx",sheet = "Metabolite List")

met_dict <- readxl::read_xlsx("D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/COBRA/CYCLES/MANUAL/TOCOBRA_V7_G.xlsx",sheet = "Metabolite List")
#met_dict <- readxl::read_xlsx(paste0(dir,"/","1.xlsx"),sheet = "Metabolite List")
met_dict <- met_dict$Abbreviation
sep_rxn <- " "
out_dir <- "D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/COBRA/CYCLES/MANUAL"#paste0(dir,"/","R")
#out_name <- "CURATION_V4"
out_name <- "CURATION_V7_CYC"
save_xlsx=T

print(round(length(met_dict)/length(rxn_dict)*1,3))

x <- GetStoichiometry(met_dict,rxn_dict,sep_rxn,rxn_ids=NULL,bounds,save_xlsx,out_dir,out_name,get_network = T)

# write.table(x$stech_matrix,paste0(dir,"/R_files/","stochiometric_mat.tsv"),quote =F,na = "",row.names = F,sep = "\t")
# write.table(x$summary_metabolites,paste0(dir,"/R_files/","summary_met.tsv"),quote =F,na = "",row.names = F,sep = "\t")
# write.table(x$summary_reactions,paste0(dir,"/","summary_rxn.tsv"),quote =F,na = "",row.names = F,sep = "\t")
# write.table(x$changes,paste0(dir,"/R_files/","summary_changes.tsv"),quote =F,na = "",row.names = F,sep = "\t")
# write.table(x$changes$GAMS,paste0(dir,"/R_files/","GAMS.txt"),quote =F,na = "",row.names = F,sep = "\t",col.names = F)
# write.table(x$summary_freq,paste0(dir,"/R_files/","summary_frequencies.tsv"),quote =F,na = "",row.names = F,sep = "\t",col.names = T)





# write.xlsx(x$stech_matrix, file=paste0(dir,"/R_files/","results.xlsx"), sheetName="stochiometric_mat", row.names=T)
# write.xlsx(x$summary_metabolites, file=paste0(dir,"/R_files/","results.xlsx"), sheetName="summary_met", row.names=F,append = T)
# write.xlsx(x$summary_reactions, file=paste0(dir,"/R_files/","results.xlsx"), sheetName="summary_rxn", row.names=F,append = T)
# write.xlsx(x$changes, file=paste0(dir,"/R_files/","results.xlsx"), sheetName="summary_changes", row.names=F,append = T)
# write.xlsx(x$changes$GAMS, file=paste0(dir,"/R_files/","results.xlsx"), sheetName="GAMS", row.names=F,append = T)
# write.xlsx(x$summary_freq, file=paste0(dir,"/R_files/","results.xlsx"), sheetName="summary_frequencies", row.names=F,append = T)
