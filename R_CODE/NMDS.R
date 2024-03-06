require(factoextra);require(vegan);require(ggrepel);#library(ggVennDiagram)
library(venn)
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

data_1 <- data
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


if(!file.exists("D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/FLUX_RESULTS/SC2/results/NMDS.RData")){
#https://www.rpubs.com/RGrieger/545184
dist_data <- vegdist(data[,-c(1,2567)],method = "mahalanobis")
dune.mds <- metaMDS(dist_data,parallel=4)
save.image("D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/FLUX_RESULTS/SC2/results/NMDS.RData")
} else {
load("D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/FLUX_RESULTS/SC2/results/NMDS.RData")
}
gc()

data <- data_1
#scenario
scen_int <- strsplit(data$scenario,"-")

#subsetting
site.scrs <- as.data.frame(scores(dune.mds)) #save NMDS results into dataframe
site.scrs <- cbind(site.scrs, scenario = unlist(lapply(scen_int , `[[`, 1))) #add grouping variable "Management" to dataframe
site.scrs <- cbind(site.scrs, interval = unlist(lapply(scen_int , `[[`, 2))) #add grouping variable of cluster grouping to dataframe
site.scrs <- cbind(site.scrs, group = data$scenario) #add site names as variable if you want to display on plot
site.scrs <- cbind(site.scrs, cluster = data$cluster) #add site names as variable if you want to display on plot

site.scrs$scenario <- factor(site.scrs$scenario,
                                      levels=c("0.1",
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
                                               "10000"))


site.scrs2 <- site.scrs[which(site.scrs$interval<400),]
site.scrs2 <- site.scrs2[site.scrs2$scenario %in% c("20",
                         "50",
                         "100",
                         "200",
                         "500",
                         "1000",
                         "2000",
                         "5000",
                         "10000"),]
site.scrs2$scenario <- factor(site.scrs2$scenario,
                             levels=c(
                                      "20",
                                      "50",
                                      "100",
                                      "200",
                                      "500",
                                      "1000",
                                      "2000",
                                      "5000",
                                      "10000"))
################################################################################
library(Polychrome)
set.seed(1000)
P36 <- createPalette(12, c("#0000FF", "#ff0000"), M=10000,target = "normal")
names(P36) <- levels(site.scrs$scenario)
P36 <- P36[4:12]
################################################################################

nmds.plot.dune <- ggplot(site.scrs2, aes(x=NMDS1,
                                         y=NMDS2,
                                         label=interval,
                                         shape = factor(cluster)
                                         ))+ #sets up the plot
  geom_hline(yintercept=0)+
  geom_vline(xintercept =0)+
  #xlim(c(-20,20))+
  #ylim(c(-20,20))+
  
  geom_point(colour="azure4",size = 4.3)+ #adds site points to plot, shape determined by Landuse, colour determined by Management
  #geom_point(colour="black",size = 1)+ #adds site points to plot, shape determined by Landuse, colour determined by Management
  
  coord_fixed()+
  #scale_colour_manual(values=P36)+
  #theme_classic()+ 
  #theme(panel.background = element_rect(fill = NA, colour = "black", size = 1, linetype = "solid"))+
  labs(#colour = "scenario", 
       shape = "cluster")+ # add legend labels for Management and Landuse
  theme(legend.position = "right", legend.text = element_text(size = 18), 
        legend.title = element_text(size = 18),
        axis.text = element_text(size = 18),
        strip.text = element_text(size=18),
        panel.spacing.x = unit(1,"line"),  
        panel.spacing.y = unit(1,"line"),
        axis.title.x = element_text(size=30, face="bold"),
        axis.title.y = element_text(size=30, face="bold"))#+ # add legend at right of plot

nmds.plot.dune <- nmds.plot.dune + facet_wrap(vars(scenario),scales = "fixed") 
nmds.plot.dune <- nmds.plot.dune + geom_text_repel(
                size = 2.1,    # Repel away from the left edge, not from the right.
                #xlim = c(NA, Inf),
                # Do not repel from top or bottom edges.
                #ylim = c(-Inf, Inf),
                max.overlaps = 180,#200,
                max.iter = 10000,show.legend = NA,box.padding = 0.05,
                point.padding = 0.2, 
                nudge_x = .15,
                nudge_y = .5,
                segment.linetype = 6,
                segment.curvature = -1e-20,hjust         = 1
                )
#nmds.plot.dune http://127.0.0.1:29245/graphics/c009d6d5-9150-4ecd-8f12-8612cf4faa27.png
ggsave(filename = paste0(InDir,"NMDS.pdf"),nmds.plot.dune,width = 28,height = 20,dpi = 1000,limitsize = F,scale = 0.9)

scenarios_1 <- c("20","50","100","200","500","1000","2000","5000","10000")
################NMDS PER SCENARIO
for(i in 1:9){
  
  nmds.plot.dune1 <- ggplot(site.scrs2[which(site.scrs2$scenario==scenarios_1[[i]]),], aes(x=NMDS1,
                                           y=NMDS2,
                                           label=interval,
                                           shape = factor(cluster)
  ))+ #sets up the plot
    geom_hline(yintercept=0)+
    geom_vline(xintercept =0)+
    #xlim(c(-20,20))+
    #ylim(c(-20,20))+
    
    geom_point(colour="azure4",size = 8)+ #adds site points to plot, shape determined by Landuse, colour determined by Management
    #geom_point(colour="black",size = 1)+ #adds site points to plot, shape determined by Landuse, colour determined by Management
    #ggtitle(scenarios_1[[i]]," ??M")+
    coord_fixed()+
    #scale_colour_manual(values=P36)+
    #theme_classic()+ 
    #theme(panel.background = element_rect(fill = NA, colour = "black", size = 1, linetype = "solid"))+
    labs(#colour = "scenario", 
      shape = "cluster")+ # add legend labels for Management and Landuse
    theme(legend.position = "right", legend.text = element_text(size = 24), 
          legend.title = element_text(size = 18),
          axis.text = element_text(size = 18),
          strip.text = element_text(size=18),
          panel.spacing.x = unit(1,"line"),  
          panel.spacing.y = unit(1,"line"),
          axis.title.x = element_text(size=30, face="bold"),
          axis.title.y = element_text(size=30, face="bold"))#+ # add legend at right of plot

  nmds.plot.dune1 <- nmds.plot.dune1 + geom_text_repel(
    size = 10,    # Repel away from the left edge, not from the right.
    #xlim = c(NA, Inf),
    # Do not repel from top or bottom edges.
    #ylim = c(-Inf, Inf),
    max.overlaps = 180,#200,
    max.iter = 10000,show.legend = NA,box.padding = 0.05,
    point.padding = 0.2, 
    nudge_x = .15,
    nudge_y = .5,
    segment.linetype = 6,
    segment.curvature = -1e-20,hjust         = 1
  )
  #nmds.plot.dune http://127.0.0.1:29245/graphics/c009d6d5-9150-4ecd-8f12-8612cf4faa27.png
  ggsave(filename = paste0(InDir,"NMDS_",scenarios_1[[i]],".pdf"),nmds.plot.dune1,width = 28,height = 25,dpi = 1000,limitsize = F,scale = 0.9)
  
  
}
  #displays plot
################################################################################
#total NMDS

################################################################################

nmds.plot.dune2 <- ggplot(site.scrs2, aes(x=NMDS1,
                                         y=NMDS2,
                                         label=interval,
                                         shape = factor(cluster)
))+ #sets up the plot
  geom_hline(yintercept=0)+
  geom_vline(xintercept =0)+
  #xlim(c(-20,20))+
  #ylim(c(-20,20))+
  
  geom_point(colour="azure4",size = 4.3)+ #adds site points to plot, shape determined by Landuse, colour determined by Management
  #geom_point(colour="black",size = 1)+ #adds site points to plot, shape determined by Landuse, colour determined by Management
  
  coord_fixed()+
  #scale_colour_manual(values=P36)+
  #theme_classic()+ 
  #theme(panel.background = element_rect(fill = NA, colour = "black", size = 1, linetype = "solid"))+
  labs(#colour = "scenario", 
    shape = "cluster")+ # add legend labels for Management and Landuse
  theme(legend.position = "right", legend.text = element_text(size = 18), 
        legend.title = element_text(size = 18),
        axis.text = element_text(size = 18),
        strip.text = element_text(size=18),
        panel.spacing.x = unit(1,"line"),  
        panel.spacing.y = unit(1,"line"),
        axis.title.x = element_text(size=30, face="bold"),
        axis.title.y = element_text(size=30, face="bold"))#+ # add legend at right of plot

#nmds.plot.dune <- nmds.plot.dune + facet_wrap(vars(scenario),scales = "fixed") 
# nmds.plot.dune <- nmds.plot.dune + geom_text_repel(
#   size = 2.1,    # Repel away from the left edge, not from the right.
#   #xlim = c(NA, Inf),
#   # Do not repel from top or bottom edges.
#   #ylim = c(-Inf, Inf),
#   max.overlaps = 180,#200,
#   max.iter = 10000,show.legend = NA,box.padding = 0.05,
#   point.padding = 0.2, 
#   nudge_x = .15,
#   nudge_y = .5,
#   segment.linetype = 6,
#   segment.curvature = -1e-20,hjust         = 1
# )
#nmds.plot.dune http://127.0.0.1:29245/graphics/c009d6d5-9150-4ecd-8f12-8612cf4faa27.png
ggsave(filename = paste0(InDir,"NMDS_TOTAL.pdf"),nmds.plot.dune2,width = 28,height = 20,dpi = 1000,limitsize = F,scale = 0.9)




################################################################################
require(UpSetR)
data2 <- data

data2[,-c(1,2567)][data2[,-c(1,2567)]>0] <- 1
data2[,-c(1,2567)][data2[,-c(1,2567)]<0] <- 1
data2$interval <- site.scrs$interval
data2$scenario <- site.scrs$scenario
data2$scenario
intervals <- unique(data2$interval)

data2 <-                data2[data2$scenario %in% c("20",
                                                    "50",
                                                    "100",
                                                    "200",
                                                    "500",
                                                    "1000",
                                                    "2000",
                                                    "5000",
                                                    "10000"),]

data2 <- data2[rowSums(data2)>0,]
a_list <- list()
for(i in 1:length(intervals)){
  #i <- 1
  a <- data2[which(data2$interval==intervals[[i]]),]
  a2 <- as.data.frame(matrix(ncol = 2566,nrow = 1))
  a2[,-1] <- colSums(a[,-c(1,2567,2568)])
  a2[,1] <- intervals[[i]]
  colnames(a2) <- c("interval",colnames(data2[,-c(1,2567,2568)]))
  a_list[[i]] <- a2
  rm(a,a2)
  };rm(i)
a_list <- do.call(rbind,a_list)
row.names(a_list) <- a_list$interval
a_list$interval <- NULL
a_list <- as.data.frame(t(a_list))

a_list <- a_list[rowSums(a_list)>0,]
################################################################################
library(rcartocolor)
nColor <- 9
set.seed(1000)
color1 <- carto_pal(nColor, "Tropic")
color1 <- c("#808080",color1)
################################################################################
ph <- pheatmap::pheatmap(
  a_list,
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
  cluster_cols = F,
  treeheight_row = 700,
  treeheight_col=500,
  #scale = "row",
  #annotation_col = ann_col,
  #annotation_colors = annotation_colors
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


#save

save_pheatmap_pdf(
  x = ph,
  filename = paste0(
    "D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/FLUX_RESULTS/SC2/results/",
    "/",
    "HEATMAP_SHARED_INTERVALS",
    "_SC2.pdf"
  ),
  width = 240,
  height = 450
)
################################################################################
SSR <- levels(data2$scenario)

data_scen <- list()
for(i in 4:length(SSR)){
  #i <- 4
  d_i <- data2[which(data2$scenario==SSR[[i]]),]
  
  d_i_i <- data.frame(matrix(ncol=2566,nrow = 1))
  d_i_i[,1] <- SSR[[i]]
  d_i_i[,-1] <- colSums(d_i[,-c(1,2567,2568)])
  colnames(d_i_i) <- c("scenario",colnames(data2[,-c(1,2567,2568)]))
  data_scen[[i-3]] <- d_i_i
  rm(d_i_i,d_i)
};rm(i)

data_scen <- do.call(rbind,data_scen)
data_scen[,-1] <- data_scen[,-1]/501
row.names(data_scen) <- data_scen[,1]
data_scen <- data_scen[,-1]
data_scen<- as.data.frame(t(data_scen))
data_scen <- data_scen[which(rowSums(data_scen)>0),]
data_scen_bu <- data_scen
data_scen <- data_scen*100
#data_scen <- as.numeric(data_scen)
ph <- pheatmap::pheatmap(
  data_scen,
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
  na_col = "gray",
  number_format = "%.2f",
  silent = T,
  cluster_rows = T,
  cluster_cols = F,
  treeheight_row = 700,
  treeheight_col=500,
  #scale = "row",
  #annotation_col = ann_col,
  #annotation_colors = annotation_colors
)
# grob_classes <- purrr::map(ph$gtable$grobs, class)
# idx_grob <-
#   which(purrr::map_lgl(grob_classes, function(cl)
#     'gTree' %in% cl))[1]
# grob_names <- names(ph$gtable$grobs[[idx_grob]]$children)
# idx_rect <- grob_names[grep('rect', grob_names)][1]
# 
# ## Remove borders around cells
# ph$gtable$grobs[[idx_grob]]$children[[idx_rect]]$gp$col <-
# ph$gtable$grobs[[idx_grob]]$children[[idx_rect]]$gp$fill
# ph$gtable$grobs[[idx_grob]]$children[[idx_rect]]$gp$lwd <- 3


#save

save_pheatmap_pdf(
  x = ph,
  filename = paste0(
    "D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/FLUX_RESULTS/SC2/results/",
    "/",
    "HEATMAP_SHARED_ALSCENARIO_FREQ",
    "_SC2.pdf"
  ),
  width = 240,
  height = 450
)
################################################################################

data_scen_bu[data_scen_bu>0] <- 1
data_scen_bu <- data_scen_bu[rowSums(data_scen_bu)>0,]
# upset(data_scen_bu, order.by = "freq",sets = SSR[-c(1,2,3)],keep.order = T, nintersects = 26,
#       text.scale = c(2, 2, 2, 2, 2, 2),)

x_up <- upset(data_scen_bu, order.by = "freq", query.legend = "top",#color.pal = "gray",
      sets.bar.color=P36,#c("maroon","blue","orange")
      sets = SSR[-c(1,2,3)],keep.order = T,point.size = 5,
      matrix.color = "gray50",line.size = 1,
      main.bar.color = "gray30",set_size.show = F,
      nintersects=NA,mainbar.y.label = "Number of reactions",
      sets.x.label = "Aluminum scenario (µM)",
      #width_ratio=0.2
      #nintersects = 26,
      text.scale = c(2, 2, 2, 2, 2, 2),
      # set.metadata = list(
      #   data = data.frame(sets=colnames(data_scen_bu),
      #                     scenario=colnames(data_scen_bu)),
      #   list(type = "matrix_rows", 
      #        column = "scenario",
      #        colors = P36, 
      #        alpha = 0.5)),
      # 
      
      
      queries = list(
        # #20,
        # list(query = intersects,
        # params = list("20"),
        # color = P36[[1]], active = T),
        #50
        list(query = intersects,
             params = list("50"),
             color = P36[[2]], active = T, query.name = "50"),
        #100
        list(query = intersects,
             params = list("100"),
             color = P36[[3]], active = T, query.name = "100"),
        # #200
        # list(query = intersects,
        #      params = list("200"),
        #      color = P36[[4]], active = T),
        #500
        list(query = intersects,
             params = list("500"),
             color = P36[[5]], active = T, query.name = "500"),
        #1000
        list(query = intersects,
             params = list("1000"),
             color = P36[[6]], active = T, query.name = "1000"),
        # #2000
        # list(query = intersects,
        #      params = list("2000"),
        #      color = P36[[7]], active = T),
        #5000

        list(query = intersects,
             params = list("5000"),
             color = P36[[8]], active = T, query.name = "5000")#,
        # #10000
        # list(query = intersects,
        #      params = list("10000"),
        #      color = P36[[9]], active = T)       
        
        )
      )

x_up
#"50","100","200","500","1000","2000","5000","10000"),
write.csv(data_scen_bu,paste0(
  "D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/FLUX_RESULTS/SC2/results/",
  "/",
  "shared_binary.csv"),row.names = T,quote = F,na = "")




################################################################################
scenarios_to <- colnames(data_scen_bu)
scenarios_to_ORI <- scenarios_to
#scenarios_to <- scenarios_to[1:7]
colnames(data_scen_bu) <- paste(colnames(data_scen_bu)," µM")
reactions_list <- list()
unique_rxn_list <- list()
for(i in 1:length(scenarios_to)){
  #i <- 2
  reactions_list[[i]] <- 
  row.names(data_scen)[data_scen_bu[,i]==1]
  
  data_scen_bu_i <- data_scen_bu[which(data_scen_bu[,i]==1),]
  data_scen_bu_j <- data_scen_bu_i
  for(j in 1:ncol(data_scen_bu_i)){
    if(i!=j){
      data_scen_bu_j <- data_scen_bu_j[which(data_scen_bu_j[,j]==0),]
    #} else {
      #print(i)
    }
  };rm(j)
  if(nrow(data_scen_bu_j)>0){
  unique_rxn_list[[i]] <- data.frame(scenario=colnames(data_scen_bu)[i],
                                     rxns=row.names(data_scen_bu_j))
  }
};rm(i)

names(reactions_list) <- scenarios_to
#names(unique_rxn_list) <- scenarios_to
unique_rxn_list <- do.call(rbind,unique_rxn_list)

write.csv(unique_rxn_list,paste0(
  "D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/FLUX_RESULTS/SC2/results/",
  "/",
  "unique_rxns_per_scenario.csv"),row.names = F,quote = F,na = "")

#######
#reactions per scenario
reactions_1 <- as.data.frame(matrix(nrow = ncol(data_scen_bu),ncol = 2))
for(i in 1:ncol(data_scen_bu)){
  reactions_1[i,2] <- sum(data_scen_bu[,i][which(data_scen_bu[,i]==1)])
}
reactions_1[,1] <- colnames(data_scen_bu)



write.csv(reactions_1,paste0(
  "D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/FLUX_RESULTS/SC2/results/",
  "n_rxn_perscenario.csv"),row.names = F,quote = F,na = "")
################################################################################
sim_scenarios_df <- as.data.frame(t(data_scen_bu))
jac_dist <- vegdist(sim_scenarios_df,method = "jaccard",binary = F)
plot(hclust(jac_dist,),main="",sub = "",xlab = "")
#library(Polychrome)
#P36 <- createPalette(12, c("#0000FF", "#ff0000"), M=10000,target = "normal")
#names(P36) <- colnames(data_scen_bu) #levels(x_scenarios_j_flux_a$scenario)
################################################################################
#VENN

X_TO_DRAW <- data_scen_bu[,1:7]#data_scen_bu[,2:8]
X_TO_DRAW <- X_TO_DRAW[rowSums(X_TO_DRAW)>0,]
venn(X_TO_DRAW, ilabels = "counts",zcolor = P36[1:7],#P36[2:8],
     plotsize = 10,ilcs = 2,linetype="dashed", ggplot = TRUE)#[1:7])



################################################################################
# library(VennDiagram)
# 
# 
# VennDiagram::venn.diagram(x = reactions_list[1:5], 
#                           category.names = names(reactions_list)[1:5],
#                           euler.d = TRUE,
#                           filename =paste0(
#                             "D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/FLUX_RESULTS/SC2/results/",
#                             "/",
#                             "VENN_JACCARD.png"), output=F)  




# without set names, the first 4 elements in list will be chose to draw four-set venn

#ggVennDiagram(reactions_list[1:7], force_upset = F,
#              order.set.by = "name", order.intersect.by = "none")#, show_intersect = TRUE)
# 
# 
# ggVennDiagram(reactions_list[1:7]) + 
#   guides(fill = guide_legend(title = "Title")) +
#   theme(legend.title = element_text(color = "red"),
#         legend.position = "bottom")
