
library(ggVennDiagram)
require(data.table)
require(ggplot2)
require(reshape2)
require(ggpubr)
require(bit)
require(vegan)
require(factoextra);require(xlsx)
require(FactoMineR)
library(caret)
library(NbClust)
library(recipes)
library(resample)
set.seed(1000)
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
#http://www.sthda.com/english/wiki/ggcorrplot-visualization-of-a-correlation-matrix-using-ggplot2
data <-
  read.csv(
    paste0(
      "D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/FLUX_RESULTS/SC2/results/",
      "PSEUDO_JOINED_SC2_A.csv"
    )
  )
data$scenario <- sub("200_S2_", "", data$scenario)
data$interval <- as.character(data$interval)
data <- data[!data$interval %in% "1", ]
#data$interval <- as.numeric(data$interval)
time <- as.character(seq(0, 1020, round((1020 / 500), 3)))
intervals <- as.character(2:502)
intervals <- data.frame(intervals = intervals,
                        time = time)
inter_prov <- data$interval
for (i in 1:nrow(data)) {
  #i <- 1
  #print(i)
  
  x_int <- intervals[intervals$intervals %in% inter_prov[i], ]
  inter_prov[[i]] <- x_int$time
  #data$interval[which(data$interval==intervals$intervals[[i]])]# <- as.character(intervals$time[[i]])
}
rm(i)
data$interval <- inter_prov
scenario <- data$scenario
data$scenario <- factor(
  scenario,
  levels = c(
    "0.1",
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
    "10000"
  )
)


data$scenario <- paste0(data$scenario, "-", data$interval)
#data$interval <- NULL
data$Objective <- NULL
#data$scenario <- as.factor(data$scenario)

length(unique(data$scenario))
data$scenario[duplicated(data$scenario)]
row.names(data) <- data$scenario
#data$scenario <- NULL
data$interval <- NULL
for (i in 2:ncol(data)) {
  data[, i] <- as.numeric(data[, i])
}
rm(i)

################################################################################
#scalling data 
# preProcValues  <-
#   preProcess(as.data.frame(data[, -1]),method = "YeoJohnson")  
#              #method=c("center", "scale"))
#              #method = c("expoTrans"))
# 
# norm_scale <- predict(preProcValues , as.data.frame(data[, -1]))
# 

#YEO-JOHNSON
rec <- recipe(
  scenario ~.,
  data = data
)

yj_transform <- step_YeoJohnson(rec, all_numeric(),limits = c(-10,10),skip = F)
yj_estimates <- prep(yj_transform, verbose = T)
yj_te <- bake(yj_estimates,new_data = data)


data2 <- cbind(data$scenario, yj_te[,-c(2566)])
colnames(data2) <- c("scenario",colnames(data2)[-1])


################################################################################
#scaling classical form
#  preProcValues  <-
#   preProcess(as.data.frame(data[, paste0("R",1:2565)]),
#              method=c("center", "scale"))
#              #method = c("expoTrans"))
# 
# norm_scale <- predict(preProcValues , data[, paste0("R",1:2565)])
# 
# data3 <- cbind(data$scenario, norm_scale)
norm_trans <- step_normalize(rec, all_numeric())
norm_obj <- prep(norm_trans, verbose = T)
transformed_te  <- bake(norm_obj,new_data = data)


data3 <- cbind(data$scenario, transformed_te[,-c(2566)])
colnames(data3) <- c("scenario",colnames(data3)[-1])

#colnames(data3) <- c("scenario",paste0("R",1:2565))
#plot(density(data$R2), main = "before")
#plot(density(yj_te$R2), main = "after")

# data.cor <- get_dist(x = data2[,-1], 
#                      method = "mahalanobis",stand = F)
#data.cor <- vegdist(x = data[,-1],method = "mahalanobis")

#summary(norm_scale)
################################################################################
#clustering using kmeans, whatever (I prefer to avoid the use of kmeans but if it runs is ok)

if (!file.exists(
  paste0(
    "D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/FLUX_RESULTS/SC2/results/",
    "SC2_Clustering.csv"
  )
)) {
#  x_means <- hcut(data2[, -1],hc_func = "hclust",hc_method = "ward.D",hc_metric = "euclidean")
data_mod <- data
null_list <- list()

for(i in 2:ncol(data_mod)){
  #i <- 3
  x_i <- unlist(unique(data_mod[,i]))
  #print(x_i)
  if(length(x_i)>1){
    #print(1)
    null_list[[i-1]] <- i
  } else if(length(x_i)==1){
    
    if((x_i)==0){
      #print(2)
      null_list[[i-1]]  <- NULL  
    } else {
      #print(3)
      null_list[[i-1]] <- i
    }
  } else {
    #print(4)
    null_list[[i-1]]  <- NULL  
  }
}
  
null_list <- null_list[!unlist(lapply(null_list,is.null))]
null_list <- unlist(null_list)
data_mod <- data_mod[,c(1,null_list)]
x_kmeans <- fviz_nbclust(data_mod[, -1], kmeans, k.max = 30,method = 'gap_stat')#optimal number of clusters
#x_kmeans2 <- fviz_nbclust(data3[, -1], kmeans, k.max = 30,method = 'silhouette')#optimal number of clusters

  # x_kmeans <- NbClust(data=NULL,#data2[, -1]
  #                     diss=data.cor,
  #                     distance = NULL,
  #                     min.nc = 2,
  #                     max.nc = 30,
  #                     method = "ward.D2",
  #                     index = "silhouette")
  #plot(x_kmeans$All.index)
  # x_kmeans2 <- fviz_nbclust(x_kmeans)
  # x_means <- hcut(x = data.cor,#data2[, -1],
  #                 isdiss = T,
  #                 hc_func = "hclust",
  #                 k = 50,
  #                 hc_method = "ward.D",
  #                 hc_metric = "euclidean",
  #                 graph = F,
  #                 stand = F
  #                 )
  # 
  #sil <- fviz_silhouette(x_kmeans)
  x_kmeans
#  x_kmeans2
 # #optimal kmeans
  km.final <- kmeans(data2[, -1],
                     as.numeric(x_kmeans$data$clusters[which.max(x_kmeans$data$y)]))
  #x_kmeans$data$clusters[which.max(x_kmeans$data$y)])
  #km.final$tot.withinss
  #plot(km.final)
  
  # fviz_cluster(km.final, data = data2[,-1],
  #              #palette = c("#2E9FDF", "#00AFBB", "#E7B800"),
  #              geom = "point",
  #              ellipse.type = "convex",
  #              ggtheme = theme_bw()
  # )
  
  #saving data with new clusters
  data$cluster <- km.final$cluster
  write.csv(
    data,
    paste0(
      "D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/FLUX_RESULTS/SC2/results/",
      "SC2_Clustering.csv"
    ),
    na = "",
    row.names = T
  )
} else {
  data <-
    read.csv(
      paste0(
        "D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/FLUX_RESULTS/SC2/results/",
        "SC2_Clustering.csv"
      ),
      row.names = 1,
      header = T
    )
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
tapply(data$cluster, data$cluster, length)
clusters <- unique(data$cluster)

data_cl_i2_i <- list()
for (i in 1:length(clusters)) {
  #i <- 1
  data_cl_i <- data[which(data$cluster == clusters[[i]]), ]
  data_cl_i <- data_cl_i[, -c(1, 2567)]
  
  data_cl_i[data_cl_i > 0] <- 1
  data_cl_i[data_cl_i < 0] <- 1
  
  rxn_number <- colSums(data_cl_i)
  rxn_number <- rxn_number[rxn_number > 0]
  print(length(rxn_number))
  data_cl_i2 <- data.frame(
    cluster = clusters[[i]],
    rxn = names(rxn_number),
    freq = rxn_number,
    quantile = NA
  )
  data_cl_i2$quantile[which(data_cl_i2$freq >
                              quantile(data_cl_i2$freq)[3])] <- 1
  
  
  data_cl_i2_i[[i]] <- data_cl_i2
  rm(data_cl_i, data_cl_i2, rxn_number)
}
rm(i)

data_cl_i2_i <- do.call(rbind, data_cl_i2_i)
data_cl_i2_i_final <- data_cl_i2_i[which(data_cl_i2_i$quantile == 1), ]
#saving
write.csv(
  data_cl_i2_i_final,
  paste0(
    "D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/FLUX_RESULTS/SC2/results/",
    "SC2_Clustering_profile.csv"
  ),
  na = "",
  row.names = F
)
################################################################################
data_c <- data
#scenario
scen_int <- strsplit(data$scenario,"-")

#subsetting
data_c <- cbind(data_c, scenario = unlist(lapply(scen_int , `[[`, 1))) #add grouping variable "Management" to dataframe
data_c <- cbind(data_c, interval = unlist(lapply(scen_int , `[[`, 2))) #add grouping variable of cluster grouping to dataframe
data_c[,1] <- NULL

data_c <- data_c[,c("interval","scenario","cluster")]

intervals_to_do <- unique(as.numeric(data_c$interval))
scenarios_to_do <- c(
  "0.1","0.5","1",
  "20","50","100",
  "200","500","1000",
  "2000","5000","10000")

d_clus_resampled <- list()
for(i in 1:length(scenarios_to_do)){
  #i <- 1
  data_c_i_summ <- data_c[which(data_c$scenario==scenarios_to_do[[i]]),]
  d_i <- as.data.frame(matrix(ncol = 4,nrow = length(intervals_to_do)))
  colnames(d_i) <- c(paste0(scenarios_to_do[[i]],"_",1:4))
  
  for(j in 1:nrow(d_i)){
    x_clust <- data_c_i_summ$cluster[j]
    d_i[j,x_clust] <- 1
    d_i[j,-c(x_clust)] <- 0
    };rm(j)
  
  d_clus_resampled[[i]] <- d_i
  rm(d_i)
  };rm(i)

d_clus_resampled <- do.call(cbind,d_clus_resampled)
row.names(d_clus_resampled) <- intervals_to_do
################################################################################
d_clus_resampled <- d_clus_resampled[,colSums(d_clus_resampled)>0]
# scen_int_res <- strsplit(colnames(d_clus_resampled),"_")
# 
# ann_col <- data.frame(cluster = unlist(lapply(scen_int_res , `[[`, 2)))
# row.names(ann_col) <- colnames(d_clus_resampled)
# 
# 
# annotation_colors =  list(
#   cluster = c(
#     "1" = "blue",
#     #"#006EC9",
#     "2" =
#       "red",
#     "3" =
#       "green",#,
#     # "4" =
#     #   "orange",
#     "4" =
#       "purple"
#   )
# )
#     # "6" =
#     
#     

# ph_clus <- pheatmap::pheatmap(
#   d_clus_resampled,
#   annotation_col = ann_col,
#   annotation_colors = annotation_colors,
#   #data_to_test_delta,
#   #breaks=MyBreaks,
#   # putting the top on top
#   #color = hcl.colors(20, "Roma"),
#   #color = better_col_palette, #color1,
#   #color = color1,
#   #"ag_Sunset"),
#   fontsize = 14,
#   annotation_legend = T,
#   #F,
#   drop_levels = T,
#   #clustering_method = "ward.D",
#   #scale = "none",
#   #scale = "column",
#   clustering_distance_cols  = "binary",
#   clustering_distance_rows = "binary",
#   display_numbers = F,
#   fontsize_row = 13,
#   #12
#   fontsize_col =  14,
#   #12
#   border_color = "gray98",
#   cellwidth = 11,
#   #48
#   angle_col = 90,
#   cellheight = 9.5,
#   #16
#   legend = T,
#   #legend_breaks = MyBreaks,
#   kmeans_k = NA,
#   annotation_names_col = F,
#   na_col = "gray",
#   number_format = "%.2f",
#   silent = T,
#   cluster_rows = F,
#   #cluster_cols = T,
#   cluster_cols = F,
#   treeheight_row = 700,
#   treeheight_col=500,
#   #scale = "row",
# )
# ################################################################################
# save_pheatmap_pdf(
#   x = ph_clus,
#   filename = paste0(
#     "D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/FLUX_RESULTS/SC2/results/",
#     "HEATMAP_intervals_cluster",
#     "_SC2.pdf"
#   ),
#   width = 140,
#   height = 360
# )
################################################################################
write.csv(
  d_clus_resampled,
  paste0(
    "D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/FLUX_RESULTS/SC2/results/",
    "SC2_Clustering_Interval_profile.csv"
  ),
  na = "",
  row.names = T,quote = T
)

x_veg <- vegdist(t(d_clus_resampled),method = "jaccard")
plot(hclust(x_veg))
################################################################################
################################################################################
################################################################################
#HEATMAP
suppressPackageStartupMessages(library(ComplexHeatmap))
library(pheatmap)
#set.seed(1000)
scen <- strsplit(data$scenario, "-", fixed = T)

scen_list <- list()
interval_list <- list()
for (i in 1:length(scen)) {
  scen_list[[i]] <-  scen[[i]][1]
  interval_list[[i]] <-  scen[[i]][2]
}
rm(i)
scen <- data.frame(
  i = 1:length(scen),
  scenario = unlist(scen_list),
  interval = unlist(interval_list)
)

scen$interval <- as.numeric(scen$interval)


library(rcartocolor)
nColor <- 15
#seet.seed(1000)
scenarios_j <- c("50", "200","500","10000")
color1 <- carto_pal(nColor, "Tropic")
better_col_palette <- viridis::plasma(20)
#better_col_palette <- viridis::turbo(30)
length(seq(-1000,1000,140)) #14
MyBreaks <- seq(-1000,1000,140)
#data_original  <- data

# data2 <- preProcess(as.data.frame(data[,-1]), method=c("YeoJohnson"))
#
# norm_scale <- predict(data2, as.data.frame(data[,-1]))
#
# data2 <- cbind(data$scenario,norm_scale)
################################################################################
################################################################################
################################################################################
#plots
for (j in 1:length(scenarios_j)) {
  print(j)
  #j <- 2
  data_to_test <-
    data[scen$i[which(scen$scenario == scenarios_j[[j]])], -c(1)] #scaled
  data_to_test1 <- data[scen$i[which(scen$scenario==scenarios_j[[j]])],-c(1)] #normal
  
  #adding cluster number
  clust_d <- data_to_test1$cluster
  #only numeric data
  data_to_test <- data_to_test[, -c(2566)]
  data_to_test1 <- data_to_test1[, -c(2566)]
  ##############################################################################
  # ##dummy 1
  data_to_test_dummy <- data_to_test1
  data_to_test_dummy[data_to_test_dummy>0] <- 1
  data_to_test_dummy[data_to_test_dummy<0] <- 1
  data_to_test <- data_to_test[,which(colSums(data_to_test_dummy,na.rm = T)!=0)] #removing no activated reactios

  data_to_test$cluster <- clust_d
  data_to_test <-
    data_to_test[, colnames(data_to_test)[which(colnames(data_to_test)!="cluster")]] # only leaving reactions with flux different zero
  data_to_test$cluster <- clust_d
  
   row.names(data_to_test) <-
    scen$interval[which(scen$scenario == scenarios_j[[j]])]
  
  data_to_test2 <- data_to_test
  ##############################################################################
  # ##indexing reactions with variation only
  index_null <- list()
  for (i in 1:(ncol(data_to_test2) - 1)) {
    un_i <- unique(data_to_test2[, i])
    if (length(un_i) == 1) {
      index_null[[i]] <- i
    } else {
      index_null[[i]] <- NULL
    }

  }
  rm(i)

  index_null <- unlist(index_null)
  
  data_to_test2 <-
  data_to_test2[,-c(index_null)] #removing reactions with only one flux value
  data_to_test2$cluster <- clust_d
  data_to_test2$interval <- as.numeric(row.names(data_to_test2))
  data_to_test2 <- data_to_test2[which(data_to_test2$interval < 400), ]
  data_to_test2$interval <- NULL
  
  
  
  ann_col <- data.frame(cluster = as.character(data_to_test2$cluster))
  row.names(ann_col) <- row.names(data_to_test2)
  
  
  annotation_colors =  list(
    cluster = c(
      "1" = "blue",
      #"#006EC9",
      "2" =
        "red",
      "3" =
        "green",#,
      # "4" =
      #   "orange",
       "4" =
         "purple"
      # "6" =
      #   "pink",
      # "7" =
      #   "lightblue",
      # "8" =
      #   "darkgoldenrod3",
      # "9" =
      #   "deeppink4",
      # "10" =
      #   "antiquewhite3"
    )
  )#"#FF00FF")),
  
  #https://jakubnowosad.com/rcartocolor/
  
  #############################################################################

  data_to_test2 <- as.matrix(t(data_to_test2[, -c(ncol(data_to_test2))]))
  #data_to_test2 <- data_to_test2/1000
  #############################################################################
  ##delta
  # data_to_test_delta <- data_to_test2
  # 
  # for(m in 2:ncol(data_to_test_delta)){
  #   data_to_test_delta[,m] <- data_to_test2[,m]-data_to_test2[,(m-1)]
  # 
  # };rm(m)
  # 
  # data_to_test_delta <- data_to_test_delta[,-c(1)]
  # data_to_test_delta_dummy <- data_to_test_delta
  # data_to_test_delta_dummy [data_to_test_delta_dummy>0] <- 1
  # data_to_test_delta_dummy [data_to_test_delta_dummy<0] <- 1
  # #data_to_test_delta[
  # data_to_test_delta <- data_to_test_delta[which(rowSums(data_to_test_delta_dummy,na.rm = T)!=0),]
  # 
  ph <- pheatmap::pheatmap(
    data_to_test2,
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
    clustering_distance_rows = "correlation",
    display_numbers = F,
    fontsize_row = 13,
    #12
    fontsize_col =  14,
    #12
    border_color = "gray98",
    cellwidth = 11,
    #48
    angle_col = 90,
    cellheight = 9.5,
    #16
    legend = T,
    #legend_breaks = MyBreaks,
    kmeans_k = NA,
    annotation_names_col = F,
    na_col = "gray",
    number_format = "%.2f",
    silent = T,
    cluster_rows = T,
    #cluster_cols = T,
    cluster_cols = T,
    treeheight_row = 700,
    treeheight_col=500,
    #scale = "row",
    annotation_col = ann_col,
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
      "HEATMAP_",
      scenarios_j[[j]],
      "_SC2.pdf"
    ),
    width = 140,
    height = 360
  )
}
rm(j)
################################################################################
################################################################################
################################################################################
################################################################################
################################################################################


scen$scenario <- factor(scen$scenario,levels = c(
  "0.1","0.5","1",
  "20","50","100",
  "200","500","1000",
  "2000","5000","10000"))

scenarios_to <- levels(scen$scenario)


data_to_rxn_scenarios <- data.frame(matrix(nrow = length(scenarios_to),
                                           ncol = 2565+1))

for(i in 1:length(scenarios_to)){
  data_to_rxn <- data[scen$i[which(scen$scenario==scenarios_to[[i]])],]
  data_to_rxn[,-1][data_to_rxn[,-1]>0] <- 1
  data_to_rxn[,-1][data_to_rxn[,-1]<0] <- 1
  data_to_rxn_scenarios[i,-1] <- colSums(data_to_rxn[,-1])
  rm(data_to_rxn)
};rm(i)

colnames(data_to_rxn_scenarios) <- colnames(data[,-ncol(data)])
data_to_rxn_scenarios$scenario <- scenarios_to

write.csv(
  data_to_rxn_scenarios,
  paste0(
    "D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/FLUX_RESULTS/SC2/results/",
    "number_of_rxn_scenarios.csv"
  ),
  na = "",
  row.names = F
)



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
