require(factoextra);require(vegan);require(ggrepel);require(UpSetR);require(xlsx)
################################################################################
#dir
InDir <- "D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/FLUX_RESULTS/SC2/results/"
#data
data <- read.csv(
  paste0(
    InDir,
    "SC2_Clustering.csv"
  ),
  row.names = 1,
  header = T
)
model <- read.xlsx("D:/PROGRAMAS/Dropbox/shared/Chrys Ph.D-Project/DOCUMENT/CHAPTER3/iOS2218.xlsx",sheetIndex = 1)
################################################################################

################################################################################
#function to save pheatmap
save_pheatmap_pdf <- function(x,
                              filename,
                              width = 7,
                              height = 7) {
  stopifnot(!missing(x))
  stopifnot(!missing(filename))
  pdf(filename, width = width, height = height)
  grid::grid.newpage()
  grid::grid.draw(x$gtable)
  dev.off()
}
################################################################################

#scenario
scen_int <- strsplit(data$scenario,"-")

#subsetting
data <- cbind(data, scenario = unlist(lapply(scen_int , `[[`, 1))) #add grouping variable "Management" to dataframe
data <- cbind(data, interval = unlist(lapply(scen_int , `[[`, 2)))

data[,1] <- NULL

data2 <- data
data2[,c(1:2565)][data2[,c(1:2565)]>0] <- 1
data2[,c(1:2565)][data2[,c(1:2565)]<0] <- 1
################################################################################
#data2 <- as.data.frame(t(data2))
#data2 <- data2[-c(2566:2568),] 
#data2$Subsystem <- model$Subsystem
Subs <- unique(model$Subsystem)

scenarios <-        c("0.1",
                      "0.5",
                      "1",
                      "20",
                      "50",
                      "100",
                      "200",
                      "500",
                      "1000", 
                      "2000",
                      "5000",
                      "10000")

################################################################################
subs_df <- as.data.frame(matrix(ncol=12,nrow=113))
for(i in 1:length(scenarios)){
  #i <- 1
  d_i <- data2[which(data2$scenario==scenarios[[i]]),]
  x_j_list <- list()
  for(j in 1:length(Subs)){
    #print(j)
    #j <- 1
    rxns <- model$Reaction.id.gams[which(model$Subsystem==Subs[[j]])]
    d_i_j <- d_i[,rxns]
    x <- as.data.frame(matrix(ncol=4,nrow = 1))
    colnames(x) <- c("scenario","subsytem","freq","nrxn")
    x$scenario <- scenarios[[i]]
    x$subsytem <- Subs[[j]]
    
    if(length(rxns)>1){
      c_i_j <- data.frame(rxn = as.numeric(colSums(d_i_j)))
      x$freq <- sum(c_i_j$rxn)
      x$nrxn <- length(c_i_j$rxn[c_i_j$rxn>0])
    } else {
      x$freq <- sum(d_i_j)
      x$nrxn <- 1
    }
    x_j_list[[j]] <- x  
    };rm(j)
  x_j_list <- do.call(rbind,x_j_list)
  subs_df[,i] <- x_j_list$nrxn
};rm(i)

colnames(subs_df) <- c(scenarios)
row.names(subs_df) <- Subs

subs_df <- subs_df[rowSums(subs_df)>0,]
subs_df2 <- subs_df
subs_df2[subs_df2>0] <- 1

subs_df <- subs_df[-1,]
subs_df2 <- subs_df2[-1,]
#subs_df2 <- as.data.frame(t(subs_df2))
################################################################################

library(Polychrome)
set.seed(1000)
P36 <- createPalette(12, c("#0000FF", "#ff0000"), M=10000,target = "normal")
names(P36) <- colnames(subs_df)#levels(col$scenario)
P36_2 <- P36[4:12]
df_up <- subs_df2[,c(4:12)]
df_up <- df_up[rowSums(df_up)>0,]

upset(df_up,#subs_df2, 
      order.by = "freq",
      query.legend = "top",#color.pal = "gray",
      #sets.bar.color=P36,#c("maroon","blue","orange")
      sets.bar.color=P36_2,#c("maroon","blue","orange")
      keep.order = T,point.size = 5,
      matrix.color = "gray50",line.size = 1,
      main.bar.color = "gray30",set_size.show = F,
      nintersects=NA,mainbar.y.label = "Number of reactions",
      sets.x.label = "Aluminum scenario (µM)",
      #sets = scenarios,#scenarios[4:12],
      sets = scenarios[4:12],
      #nintersects = 100,
      text.scale = c(2, 2, 2, 2, 2, 2),#,
      queries = list(
      #5000
        list(query = intersects,
             params = list("5000"),
             color = P36[[8]], active = T, query.name = "5000")
      )
)
################################################################################
write.csv(subs_df2,paste0(
  "D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/FLUX_RESULTS/SC2/results/",
  "/",
  "shared_subsystems.csv"),row.names = T,quote = T,na = "")

write.csv(df_up,paste0(
  "D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/FLUX_RESULTS/SC2/results/",
  "/",
  "shared_subsystems_biomass.csv"),row.names = T,quote = T,na = "")



write.csv(subs_df,paste0(
  "D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/FLUX_RESULTS/SC2/results/",
  "/",
  "shared_subsystems_freq.csv"),row.names = T,quote = T,na = "")
################################################################################
library(rcartocolor)
nColor <- 5
set.seed(1000)
color1 <- carto_pal(nColor, "Tropic")
################################################################################
subs_df[subs_df==0] <- NA
ph <- pheatmap::pheatmap(
  subs_df,
  #data_to_test_delta,
  #breaks=MyBreaks,
  # putting the top on top
  #color = hcl.colors(20, "Roma"),
  #color = better_col_palette, #color1,
  color = color1,
  #"ag_Sunset"),
  fontsize = 14,
  annotation_legend = T,
  #F,
  drop_levels = T,
  #clustering_method = "ward.D",
  #scale = "none",
  #scale = "column",
  #clustering_distance_cols  = "correlation",
  #clustering_distance_rows = "correlation",
  display_numbers = F,
  fontsize_row = 13,
  #12
  fontsize_col =  14,
  #12
  border_color = "gray98",
  cellwidth = 45,
  #48
  angle_col = 90,
  cellheight = 10,
  #16
  legend = T,
  #legend_breaks = MyBreaks,
  kmeans_k = NA,
  annotation_names_col = F,
  na_col = "black",
  number_format = "%.2f",
  silent = T,
  cluster_rows = F,
  cluster_cols = F,
  treeheight_row = 200,
  treeheight_col=200
)

save_pheatmap_pdf(
  x = ph,
  filename = paste0(
    "D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/FLUX_RESULTS/SC2/results/",
    "/",
    "HEATMAP_SUBSYTEMS",
    "_SC2.pdf"
  ),
  width = 240,
  height = 450
)
################################################################################
#clusters, scenario and reactions
subs_df_cluster <- as.data.frame(matrix(ncol=12,nrow=113))
clusters_un <-1:2
i_list <- list()
for(i in 1:length(scenarios)){
  #i <- 7
  d_i <- data2[which(data2$scenario==scenarios[[i]]),]
  x_j_list <- list()
  for(j in 1:length(Subs)){
    #j <- 1
    rxns <- model$Reaction.id.gams[which(model$Subsystem==Subs[[j]])]
    d_i_j <- d_i[,c(rxns,"cluster")]
    list_k <- list()
    for(k in 1:length(clusters_un)){
      #k <- 1
      d_i_j_k <- d_i_j[which(d_i_j$cluster==clusters_un[[k]]),]
      x <- as.data.frame(matrix(ncol=5,nrow = 1))
      colnames(x) <- c("scenario","subsytem","cluster","freq","nrxn")
      x$scenario <- scenarios[[i]]
      x$subsytem <- Subs[[j]]
      x$cluster <- clusters_un[[k]]
      if(length(rxns)>1){
        c_i_j_k <- data.frame(rxn = as.numeric(colSums(d_i_j_k[,-c(ncol(d_i_j_k))])))
        x$freq <- sum(c_i_j_k$rxn)
        x$nrxn <- length(c_i_j_k$rxn[c_i_j_k$rxn>0])
      } else if(length(rxns)==1){
        x$freq <- sum(d_i_j)
        x$nrxn <- 1
      } else {
        x$freq <- 0
        x$nrxn <- 0
      }
      
      list_k[[k]] <- x
      #;rm(x)
    };rm(k)
    list_k <- do.call(rbind,list_k)
    x_j_list[[j]] <- list_k
  };rm(j)
  x_j_list <- do.call(rbind,x_j_list)
  i_list[[i]] <- x_j_list
};rm(i)

i_list <- do.call(rbind,i_list)
################################################################################
i_list$group <- paste0(i_list$scenario,"/",i_list$cluster)

groups <- unique(i_list$group)

cluster_df <- as.data.frame(matrix(nrow = length(Subs),ncol=25))#49))
cluster_df[,1] <- Subs
for( i in 1:nrow(cluster_df)){
  for(j in 1:length(groups)){
    #i =j <- 1
    cluster_df[i,j+1] <- as.numeric(i_list[which(i_list$subsytem==Subs[[i]] &
                  i_list$group== groups[[j]]),5])
    
  };rm(j)
};rm(i)
#######
colnames(cluster_df) <- c("subsystem",groups)
row.names(cluster_df) <- cluster_df$subsystem
cluster_df <- cluster_df[,-1]
cluster_df <- cluster_df[rowSums(cluster_df[,-1],na.rm = F)>0,]
#cluster_df[cluster_df==0] <- NA
################################################################################

ann_col <- data.frame(cluster = rep(1:2,12))
row.names(ann_col) <- groups


annotation_colors =  list(
  cluster = c(
    "1" = "blue",
    #"#006EC9",
    "2" =
      "red"#,
   # "3" =
   #   "green",#,
    # "4" =
    #   "orange",
    #"4" =
    #  "purple"

  )
)#"#FF00FF")),



ph <- pheatmap::pheatmap(
  cluster_df,
  #data_to_test_delta,
  #breaks=MyBreaks,
  # putting the top on top
  #color = hcl.colors(20, "Roma"),
  #color = better_col_palette, #color1,
  color = color1,
  #"ag_Sunset"),
  fontsize = 14,
  annotation_legend = T,
  #F,
  drop_levels = T,
  #clustering_method = "ward.D",
  #scale = "none",
  #scale = "column",
  #clustering_distance_cols  = "correlation",
  #clustering_distance_rows = "correlation",
  display_numbers = F,
  fontsize_row = 13,
  #12
  fontsize_col =  14,
  #12
  border_color = "gray98",
  cellwidth = 45,
  #48
  angle_col = 90,
  cellheight = 10,
  #16
  legend = T,
  #legend_breaks = MyBreaks,
  kmeans_k = NA,
  annotation_names_col = F,
  na_col = "black",
  number_format = "%.2f",
  silent = T,
  cluster_rows = T,
  cluster_cols = T,
  treeheight_row = 200,
  treeheight_col=200,
  annotation_col = ann_col,
  annotation_colors = annotation_colors
)

save_pheatmap_pdf(
  x = ph,
  filename = paste0(
    "D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/FLUX_RESULTS/SC2/results/",
    "/",
    "HEATMAP_SUB_CLUSTER_NRXNs",
    "_SC2.pdf"
  ),
  width = 240,
  height = 450
)
################################################################################  
#intervals subsystems

x_sub_int <- as.data.frame(matrix(ncol = length(Subs),nrow=nrow(data2)))

for(i in 1:length(Subs)){
  print(i)
  rxn_sub_i <- model$Reaction.id.gams[which(model$Subsystem==Subs[[i]])]
    
  if(length(rxn_sub_i)>1){
    x_sub_int[,i]<- rowSums(data2[,rxn_sub_i])
  } else {
    x_sub_int[,i]<- data2[,rxn_sub_i]
    #sum(data2[,rxn_sub_i],na.rm = T)
  }
};rm(i)

row.names(x_sub_int) <- row.names(data2)
colnames(x_sub_int) <- Subs
x_sub_int$cluster <- data2$cluster

#subsetting
x_sub_int <- cbind(x_sub_int, scenario = unlist(lapply(scen_int , `[[`, 1))) #add grouping variable "Management" to dataframe
x_sub_int <- cbind(x_sub_int, interval = unlist(lapply(scen_int , `[[`, 2)))

################################################################################
scenarios_j <- c("50", "200","500","10000")

for(i in 1:length(scenarios_j)){

x_sub_int_i <- x_sub_int[which(x_sub_int$scenario==scenarios_j[[i]]),]
x_sub_int_i <- x_sub_int_i[1:198,]
row.names(x_sub_int_i) <- x_sub_int_i$interval
ann_col <- data.frame(cluster = as.character(x_sub_int_i$cluster))
row.names(ann_col) <- row.names(x_sub_int_i)
x_sub_int_i$scenario <- NULL
x_sub_int_i$interval <- NULL
x_sub_int_i$cluster <- NULL

######



annotation_colors =  list(
  cluster = c(
    "1" = "blue",
    #"#006EC9",
    "2" =
      "red")
)#"#FF00FF")),


######
#x_sub_int_i <- as.data.frame(t(x_sub_int_i))
for(j in 1:ncol(x_sub_int_i)){
  x_sub_int_i[,j] <- as.numeric(x_sub_int_i[,j])
};rm(j)


x_sub_int_i <- x_sub_int_i[, colVars(x_sub_int_i)>0]
#x_sub_int_i
######
ph <- pheatmap::pheatmap(
  x_sub_int_i,
  #data_to_test_delta,
  #breaks=MyBreaks,
  # putting the top on top
  #color = hcl.colors(20, "Roma"),
  #color = better_col_palette, #color1,
  color = color1,
  #"ag_Sunset"),
  fontsize = 14,
  annotation_legend = T,
  #F,
  drop_levels = T,
  #clustering_method = "ward.D",
  #scale = "none",
  #scale = "column",
  clustering_distance_cols  = "correlation",
  #clustering_distance_rows = "correlation",
  display_numbers = F,
  fontsize_row = 20,
  #12
  fontsize_col =  16,
  #12
  border_color = "gray98",
  cellwidth = 20,
  #48
  angle_col = 90,
  cellheight = 13,
  #16
  legend = T,
  #legend_breaks = MyBreaks,
  kmeans_k = NA,
  annotation_names_col = T,
  na_col = "gray",
  number_format = "%.2f",
  silent = T,
  cluster_rows = F,
  #cluster_cols = T,
  cluster_cols = T,
  treeheight_row = 100,
  treeheight_col=100,
  #scale = "row",
  annotation_row =   ann_col,
  annotation_colors = annotation_colors
)




grob_classes <- purrr::map(ph$gtable$grobs, class)
idx_grob <-
  which(purrr::map_lgl(grob_classes, function(cl)
    'gTree' %in% cl))[1]
grob_names <- names(ph$gtable$grobs[[idx_grob]]$children)
idx_rect <- grob_names[grep('rect', grob_names)][1]

## Remove borders around cells
ph$gtable$grobs[[idx_grob]]$children[[idx_rect]]$gp$col <-
ph$gtable$grobs[[idx_grob]]$children[[idx_rect]]$gp$fill
ph$gtable$grobs[[idx_grob]]$children[[idx_rect]]$gp$lwd <- 3
save_pheatmap_pdf(
  x = ph,
  filename = paste0(
    "D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/FLUX_RESULTS/SC2/results/",
    "/",
    "HEATMAP_INTER_SUB_",
    scenarios_j[[i]],
    "_SC2.pdf"
  ),
  width = 40,
  height = 50
)
};rm(i)

