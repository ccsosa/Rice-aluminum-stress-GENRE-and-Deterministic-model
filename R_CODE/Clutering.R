
require(data.table);require(ggplot2);require(reshape2);require(ggpubr);require(bit);require(vegan)
require(factoextra):require(xlsx);require(FactoMineR);library(caret)
################################################################################
#function to save pheatmap
save_pheatmap_pdf <- function(x, filename, width=7, height=7) {
  stopifnot(!missing(x))
  stopifnot(!missing(filename))
  pdf(filename, width=width, height=height)
  grid::grid.newpage()
  grid::grid.draw(x$gtable)
  dev.off()
}
################################################################################
#http://www.sthda.com/english/wiki/ggcorrplot-visualization-of-a-correlation-matrix-using-ggplot2
data <- read.csv(paste0("D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/","PSEUDO_JOINED_SC2.csv"))
data$scenario <- sub("200_S2_","",data$scenario)
data$interval <- as.character(data$interval)
data <- data[!data$interval %in% "1",]
#data$interval <- as.numeric(data$interval)
time <- as.character(seq(0,1020,round((1020/500),3)))
intervals <- as.character(2:502)
intervals <- data.frame(intervals= intervals,
                        time=time)
inter_prov <- data$interval
for(i in 1:nrow(data)){
  #i <- 1
  #print(i)
  
  x_int <-intervals[intervals$intervals %in% inter_prov[i],]
  inter_prov[[i]] <- x_int$time
  #data$interval[which(data$interval==intervals$intervals[[i]])]# <- as.character(intervals$time[[i]])
};rm(i)
data$interval <- inter_prov
data$scenario <- factor(scenario,
                        levels = c("0.1","0.5","1","20","50","100",
                                   "200","500","1000","2000","5000","10000"))

scenario <- data$scenario
data$scenario <- paste0(data$scenario,"-",data$interval)
#data$interval <- NULL
data$Objective <- NULL
#data$scenario <- as.factor(data$scenario)

length(unique(data$scenario))
data$scenario[duplicated(data$scenario)]
row.names(data) <- data$scenario
#data$scenario <- NULL
data$interval<- NULL
for(i in 2:ncol(data)){
  data[,i] <- as.numeric(data[,i])
};rm(i)


data2 <- preProcess(as.data.frame(data[,-1]), method=c("YeoJohnson"))

norm_scale <- predict(data2, as.data.frame(data[,-1]))

data2 <- cbind(data$scenario,norm_scale)

if(!file.exists(paste0("D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/","SC2_Clustering.csv"))){
x_kmeans <- fviz_nbclust(data2[,-1], kmeans, method='silhouette')
km.final <- kmeans(data2[,-1], 
                   as.numeric(x_kmeans$data$clusters[which.max(x_kmeans$data$y)]))
                   #x_kmeans$data$clusters[which.max(x_kmeans$data$y)])
#km.final$tot.withinss
plot(km.final)

# fviz_cluster(km.final, data = data2[,-1],
#              #palette = c("#2E9FDF", "#00AFBB", "#E7B800"), 
#              geom = "point",
#              ellipse.type = "convex", 
#              ggtheme = theme_bw()
# )
data$cluster <- km.final$cluster
write.csv(data,paste0("D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/","SC2_Clustering.csv"),na = "",row.names = T)
} else {
  data <- read.csv(paste0("D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/","SC2_Clustering.csv"),row.names = 1,header = T)
}
  #  km.final <- kmeans(data, 9)
#  km.final$tot.withinss
#data[,-1] <- scale(data[,-1],center = F,scale = T)
#x_data <- FactoMineR::DMFA(data2,num.fact = 1,scale.unit = F)
# x_HCPC <- HCPC(x_data, nb.clust = -1, min = 3, max = NULL, graph = F)
# x_graph_fviz <- fviz_cluster(x_HCPC,
#              repel = T,            # Avoid label overlapping
# #             show.clust.cent = TRUE, # Show cluster centers
#              palette = "jco",         # Color palette see ?ggpubr::ggpar
#              ggtheme = theme_minimal(),
#              main = "Factor map",
#             #labelsize = 0.00001,
#             #geom=c("text","points"),
#             geom=c("point"),
#             show.clust.cent = F,
#             pointsize = 1.5,#shape = 16
# )
# 
# x_graph_fviz
# 
# data$cluster <- x_HCPC$data.clust$clust
# row.names(data) <- sub(pattern = "-",replacement = "_",x = row.names(data))
# write.csv(data,paste0("D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/","SC2_Clustering.csv"),na = "",row.names = T)

########################################################################################################################################
#detect Reactions per cluster
#cluster number
tapply(data$cluster,data$cluster,length)
clusters <-unique(data$cluster)

data_cl_i2_i <- list()
for(i in 1:length(clusters)){
  #i <- 2
  data_cl_i <- data[which(data$cluster==clusters[[i]]),]
  data_cl_i <- data_cl_i[,-c(1,2566)]
  
  data_cl_i[data_cl_i>0] <- 1
  data_cl_i[data_cl_i<0] <- 1
  
  rxn_number <- colSums(data_cl_i)
  rxn_number <- rxn_number[rxn_number > 0]
  print(length(rxn_number))
  data_cl_i2 <- data.frame(cluster= clusters[[i]],
                           rxn= names(rxn_number),
                           freq=rxn_number,
                           quantile=NA)
  data_cl_i2$quantile[which(data_cl_i2$freq >= 
                              quantile(data_cl_i2$freq)[3])]<- 1  
  
  
  data_cl_i2_i[[i]] <- data_cl_i2
  rm(data_cl_i,data_cl_i2,rxn_number)
};rm(i)

data_cl_i2_i <- do.call(rbind,data_cl_i2_i)
data_cl_i2_i_final <- data_cl_i2_i[which(data_cl_i2_i$quantile==1),]

write.csv(data_cl_i2_i_final,paste0("D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/","SC2_Clustering_profile.csv"),na = "",row.names = F)


################################################################################
################################################################################
################################################################################
suppressPackageStartupMessages(library(ComplexHeatmap))
library(pheatmap)

scen <- strsplit(data$scenario,"-",fixed = T)

scen_list <- list()
interval_list <- list()
for(i in 1:length(scen)){
scen_list[[i]] <-  scen[[i]][1]
interval_list[[i]] <-  scen[[i]][2]
};rm(i)
scen <- data.frame(i = 1:length(scen),
                   scenario=unlist(scen_list),
                   interval=unlist(interval_list))

scen$interval <- as.numeric(scen$interval)


library(rcartocolor) 
nColor <- 10

scenarios_j <- c("50","200","10000")

#data_original  <- data

# data2 <- preProcess(as.data.frame(data[,-1]), method=c("YeoJohnson"))
# 
# norm_scale <- predict(data2, as.data.frame(data[,-1]))
# 
# data2 <- cbind(data$scenario,norm_scale)



for(j in 1:length(scenarios_j)){
  
#j <- 1
data_to_test <- data[scen$i[which(scen$scenario==scenarios_j[[j]])],-c(1)] #scaled
#data_to_test1 <- data[scen$i[which(scen$scenario==scenarios_j[[j]])],-c(1)] #normal

par(mar=c(1, 1, 1, 1)) # adapt margins

clust_d <- data_to_test$cluster
data_to_test <- data_to_test[,-c(2566)]
data_to_test <- data_to_test[,colSums(data_to_test) !=0] #removing no activated reactions
data_to_test$cluster <- clust_d
row.names(data_to_test) <- scen$interval[which(scen$scenario==scenarios_j[[j]])]

data_to_test2 <- data_to_test
index_null <- list()
for(i in 1:(ncol(data_to_test2)-1)){
  #i <- 1
  if(length(unique(data_to_test[,i]))==1){
    index_null[[i]] <- i
  }
    
};rm(i)

index_null <- unlist(index_null)
data_to_test2 <- data_to_test2[,-c(index_null)] #removing reactions with only one flux value
#exc_reacts <- unlist(paste0("R",9:50))
#data_to_test2 <- data_to_test2[,!colnames(data_to_test2) %in% exc_reacts] #removing exchange reactions R9 to R50
data_to_test2$interval <- as.numeric(row.names(data_to_test2))
data_to_test2 <- data_to_test2[which(data_to_test2$interval<330),]
data_to_test2$interval <- NULL



ann_col <- data.frame(cluster=as.character(data_to_test2$cluster))
row.names(ann_col) <- row.names(data_to_test2)


annotation_colors =  list(cluster=c("1"="blue",#"#006EC9",
                                     "2"="red",
                                     "3"="green",
                                     "4"="orange",
                                     "5"="purple",
                                     "6"="pink",
                                     "7"="gray55")
                          )#"#FF00FF")),


#scales::show_col(carto_pal(nColor, "Safe"))

# data_to_test2_pp <- preProcess(as.data.frame(data_to_test2[,-c(ncol(data_to_test2))]), method=c("YeoJohnson"))
# 
# norm_scale2 <- predict(data_to_test2_pp, as.data.frame(data_to_test2[,-c(ncol(data_to_test2))]))
# 
# data_to_test2 <- cbind(data_to_test2$cluster,norm_scale2)

#https://jakubnowosad.com/rcartocolor/
ph <- pheatmap::pheatmap(
  as.matrix(t(data_to_test2[,-c(ncol(data_to_test2))])), # putting the top on top
  #color = hcl.colors(20, "Roma"),
  color = carto_pal(nColor, "Geyser"),#"ag_Sunset"),
  fontsize = 20,
  annotation_legend = T,#F,
  drop_levels=F,
  clustering_method = "ward.D",
  clustering_distance_cols = "correlation",
  clustering_distance_rows = "correlation",
  display_numbers = F,
  fontsize_row = 14,#12
  fontsize_col =  14,#12
  border_color="gray98",
  cellwidth = 11, #48
  angle_col = 90,
  cellheight = 9.5, #16
  legend = T,
  annotation_names_col = F,
  na_col = "gray",
  number_format= "%.2f",
  silent = T,
  cluster_rows = T,
  #cluster_cols = T,
  cluster_cols = F, 
  #scale = "row",
  treeheight_row=300,
  #treeheight_col=300,
  #scale = "row",
  annotation_col = ann_col,
  annotation_colors =annotation_colors
  )




grob_classes <- purrr::map(ph$gtable$grobs, class)
idx_grob <- which(purrr::map_lgl(grob_classes, function(cl) 'gTree' %in% cl))[1]
grob_names <- names(ph$gtable$grobs[[idx_grob]]$children)
idx_rect <- grob_names[grep('rect', grob_names)][1]

## Remove borders around cells
ph$gtable$grobs[[idx_grob]]$children[[idx_rect]]$gp$col <- ph$gtable$grobs[[idx_grob]]$children[[idx_rect]]$gp$fill
ph$gtable$grobs[[idx_grob]]$children[[idx_rect]]$gp$lwd <- 3
save_pheatmap_pdf(x = ph,
                  filename =paste0("D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS",
                                   "/","HEATMAP_",scenarios_j[[j]],"_SC2.pdf"),
                  width = 140,
                  height = 140)
};rm(j)

#https://cran.r-project.org/web/packages/plot.matrix/vignettes/plot.matrix.html
# library(ggcorrplot)
# corr <- round(cor(data), 1)
# p.mat <- cor_pmat(data)
# x_corr <- ggcorrplot(corr)
# # ggcorrplot(corr, p.mat = p.mat, hc.order = TRUE,
#   #            type = "lower", insig = "blank")
# outdir <- "D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS"
# ggexport(
#   x_corr,
#   filename = paste0(outdir,"/","Cor_SC2",".pdf"),
#   #width = 35,
#   width = 30,
#   height = 300,
#   #pointsize = 0.1,
#   res = 300,
#   verbose = TRUE
# )
#https://medium.com/codesmart/r-series-k-means-clustering-silhouette-794774b46586
# data_scale <- scale(data[,c(1:2565)],center = T,scale = F)
# # ####kmeans
# x_kmeans <- fviz_nbclust(data_scale, kmeans, method='silhouette')
#  km.final <- kmeans(data, 9)
#  km.final$tot.withinss
# km.final$size
# data$cluster <- km.final$cluster
# row.names(data) <- sub(pattern = "-",replacement = "_",x = row.names(data))
# #row.names(data) <- sub(pattern = "/",replacement = "_",x = row.names(data))
# 
# #write.xlsx(data,paste0("D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/","SC2_Clustering.xlsx"),row.names = T,showNA = F)
# write.csv(data,paste0("D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/","SC2_Clustering.csv"),na = "",row.names = T)

