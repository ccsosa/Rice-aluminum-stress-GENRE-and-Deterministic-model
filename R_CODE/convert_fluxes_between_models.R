require(data.table);require(ggplot2);require(reshape2);require(ggpubr)
#dir <- "D:/PROGRAMAS/Dropbox/Modelo arroz/simulaciones_CCS_2023_09_21/RESULT_Result/t1_result.20230921192049475"
#dir <- "D:/PROGRAMAS/Dropbox/Modelo arroz/Modelo + estetica/SENS/6_Result/t1_result"
#indir <- "D:/PROGRAMAS/Dropbox/Modelo arroz/simulaciones_CCS_2023_09_21"

subset_flux_scenarios <- function(indir,fluxes,dict, scenarios,rxn_sc,intervals,prefix,out_dir){
  fluxes2 <- fluxes[fluxes$time %in% intervals,]
  fluxes3 <- fluxes2
  
  for(i in 1:length(scenarios)){
    #  i <- 1
    x_list <- list()
    for(j in 1:length(rxn_sc)){
      #j <- 1
      r <- dict[which(dict$RXN_FBA==rxn_sc[j]),]
      fluxes2[,r$RXN_DET] <- round(fluxes3[,r$RXN_DET] * 0.473684211,6) #0.473684211#(3600/dens)
      x_j <-  paste0(1:length(intervals),".",r$RXN_FBA," ",
                     fluxes2[which(fluxes2$Conc==scenarios[[i]]),r$RXN_DET])
      x_j[length(intervals)+1] <- ""
      
      x_list[[j]] <- x_j#paste0(1:length(intervals),".",r," ",fluxes2[which(fluxes2$Conc==scenarios[[i]]),j])
    };rm(j)
    x_list <- do.call(c,x_list)
    x_list2 <- c("/",x_list,"/")
    write.table(x_list2,paste0(out_dir,"/",scenarios[[i]],"_",prefix,"_",".txt"),na = "",col.names = F,row.names = F,quote = F)
  };rm(i)
  return("DONE!")
}
##################################################################
indir <- "D:/PROGRAMAS/Dropbox/Modelo arroz/Modelo + estetica/SENS"
fluxes <- read.csv(paste0(indir,"/","fluxes.csv"),header = T)

rxn <- c("R220",# SAM.rxn"                                  
         "R416", #"ACS.rxn"
         "R417",#"ACO.rxn"
         "R2384",#"Ethylene.transport"
         "R2452",#"TAR2.rxn"
         "R2451", #"YUC.rxn"
         "R2522")#"Auxin.transport"

dict <- data.frame(RXN_FBA=   c("R220",# SAM.rxn"                                  
                            "R416", #"ACS.rxn"
                            "R417",#"ACO.rxn"
                            "R2384",#"Ethylene.transport"
                            "R2452",#"TAR2.rxn"
                            "R2451", #"YUC.rxn"
                            "R2522"), #"Auxin.transport"
                   
                   RXN_DET = c("SAM.rxn",
                               "ACS.rxn",
                               "ACO.rxn",           
                               "Ethylene.transport",
                               "TAR2.rxn",
                               "YUC.rxn",
                               "Auxin.transport")
)
                     
                     
                     
                    
out_dir <- "D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/GAMS_INPUTS/DYN_FLUXES"
scenarios <- unique(fluxes$Conc)[1:13]#c(1,20,50,100)
intervals <- unique(fluxes$time)
intervals <- intervals[1:500]
##################################################################

scenarios_DFBA <- list("SC1"=rxn, #1
                       "SC2"=rxn[-c(1,2,4,5,7)], #2
                       "SC3"=rxn[-c(1,5)], #3
                       "SC4"=rxn[-c(2,6)], #4
                       "SC5"=rxn[-c(1,2,7)], #5
                       "SC6"=rxn[-c(1,4,7)],#6
                       "SC7"=rxn[-c(1,2,4,7)],#7, 
                       "SC8"=rxn[-c(1,2,4,6,7)],#8, 
                       "SC9"=rxn[-c(1,2,3,4,5,7)],
                       "SC10"=rxn[-c(1,2,4,5,6,7)]
                       )#8, 
                       #"SC7"=rxn[,-c(1,2,3,4,5,6,7)])#7

for(a in 1:length(scenarios_DFBA)){
  x <- subset_flux_scenarios(indir=indir, #input dir
                             fluxes=fluxes,#fluxes csv file
                             dict=dict, #equivalence between GENRE and DET models
                             rxn_sc=scenarios_DFBA[[a]], #scenarios from word file (list names)
                             scenarios=scenarios, #scenarios of Aluminum to get fluxes 
                             intervals=intervals, #intervals (500)
                             prefix=names(scenarios_DFBA)[[a]], #list_names to add in the file to be upload in GAMS
                             out_dir=out_dir ) #output dir
  
}
  
  
  