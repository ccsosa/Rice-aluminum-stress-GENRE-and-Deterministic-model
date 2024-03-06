require(data.table);require(ggplot2);require(reshape2);require(ggpubr);require(bit);require(vegan)


dir <- "D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/FLUX_RESULTS/SC10"
names_1 <- list.files(dir,"PSEUDOESTACIONARIO_GAMS_")
names_2 <- sub(pattern = "PSEUDOESTACIONARIO_GAMS_",replacement = "",x = names_1)
names_2 <- sub(pattern = ".csv",replacement = "",x = names_2)

nrxn <- 2565

x_scenarios <- lapply(1:length(names_1),function(i){
  
  #i <- 1
  print(names_1[[i]])
  
  x <- read.csv(paste0(dir,"/",names_1[[i]]),header = F,sep = "'")
  #get obj func info
  x_obj_func <- as.data.frame(x)
  x_obj_func <- as.data.frame(x_obj_func[,c(1)])
  x_obj_func <- as.data.frame(x_obj_func[which(x_obj_func[,1]!=""),])
  x_obj_func <- as.data.frame(x_obj_func[which(x_obj_func[,1]!="/"),])
  x_obj_func <- as.data.frame(x_obj_func[which(x_obj_func[,1]!=" "),])
  x_obj_func[,1] <- sub(pattern = "Objective function ",replacement = "",x = x_obj_func[,1])
  x_obj_func[,1] <- as.data.frame(as.numeric(trimws(x_obj_func[,1])))
  x_obj_func[,2] <- 1:nrow(x_obj_func)
  x_obj_func[,3] <- names_2[[i]]
  colnames(x_obj_func) <- c("OBJ","interval","scenario")
  
  ##get flux rxns info 
  x <-x[,c(2,3)]
  x <- x[complete.cases(x),]
  colnames(x) <- c("RXN","VALUE")
  #x$RANK <- NA
  Rxns <- unique(x[,1])
  Rxns <- trimws(Rxns)
  x_chunks <- suppressMessages({bit::chunks(from = 1,
                                            to = as.numeric(nrow(x)),
                                            by=as.numeric(nrxn))}) #200000
  x_list <- list()
  for(j in 1:length(x_chunks)){
    x_j <- matrix(ncol = nrxn+3,nrow = 1)
    #print(j)
    x_j[1,] <- c(names_2[[i]],j,x_obj_func$OBJ[j],t(x[c(x_chunks[[j]][1]:x_chunks[[j]][2]),2]))
    x_list[[j]] <- x_j 
  };rm(j)
  x_list <- do.call(rbind,x_list)
  colnames(x_list) <- c("scenario","interval","Objective",Rxns)
  #write.csv(x_list,paste0("D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/","PSEUDO_JOINED_SCS_A.csv"),na = "",row.names = F)
  
  return(x_list)
})

x_scenarios <- do.call(rbind,x_scenarios)

write.csv(x_scenarios,paste0("D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/FLUX_RESULTS/SC10/results/","PSEUDO_JOINED_SC10_A.csv"),na = "",row.names = F)



rxn  <- c("R2","R417","R2451")
# 
# rxn <- c("R220",
#          "R416",
#          "R417",
#          "R2451",
#          "R2452")
# 
x_scenarios_j <- as.data.frame(x_scenarios[,c("scenario","interval","Objective",rxn)])

x_scenarios_j_flux <- melt(x_scenarios_j,id= c("scenario","interval"))
x_scenarios_j_flux$scenario <- sub("200_S10_","",x_scenarios_j_flux$scenario)

#x_scenarios_j_flux$scenario <- factor(x_scenarios_j_flux$scenario,levels = c("1","20","40","60","80","100"))
x_scenarios_j_flux$scenario <- factor(x_scenarios_j_flux$scenario,
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
#levels = c("200_S1","200_S2","200_S3","200_S4","200_S5","200_S6"))#c("1","20","40","60","80","100","120","140","160","180","200"))
x_scenarios_j_flux$value <- as.numeric(x_scenarios_j_flux$value)
x_scenarios_j_flux$interval <- as.numeric(x_scenarios_j_flux$interval)

#x_scenarios_j_flux <- x_scenarios_j_flux[x_scenarios_j_flux$variable %in% c("Objective","R417","R2452"),]
x_scenarios_j_flux <- x_scenarios_j_flux[!x_scenarios_j_flux$interval %in% c(1),]
x_scenarios_j_flux$interval <- rep(seq(0,1020,round((1020/500),3)),11*(length(rxn)+1))
#x_scenarios_j_flux <- x_scenarios_j_flux[which(x_scenarios_j_flux$variable=="Objective"),]
x_scenarios_j_flux <- x_scenarios_j_flux[which(x_scenarios_j_flux$variable!="R2"),]
x_scenarios_j_flux_a <- x_scenarios_j_flux
x_scenarios_j_flux <- x_scenarios_j_flux[which(x_scenarios_j_flux$variable!="R417"),]
x_scenarios_j_flux <- x_scenarios_j_flux[which(x_scenarios_j_flux$interval<400),] #360
x_scenarios_j_flux_a <- x_scenarios_j_flux_a[which(x_scenarios_j_flux_a$interval<400),]

x_scenarios_j_flux_a <- x_scenarios_j_flux_a[!x_scenarios_j_flux_a$scenario %in% c("0.1","0.5","1"),]
library(Polychrome)
P36 <- createPalette(13, c("#0000FF", "#ff0000"), M=10000,target = "normal")
intervals_to <- unique(x_scenarios_j_flux_a$interval)
intervals_to <- intervals_to[!1:length(intervals_to) %% 2 == 0]
names(P36) <- levels(x_scenarios_j_flux_a$scenario)
#x_scenarios_j_flux <- x_scenarios_j_flux[which(x_scenarios_j_flux$variable=="Objective"),]
x_lines <- ggline(x_scenarios_j_flux_a[which(x_scenarios_j_flux_a$variable=="Objective"),],
                  x = "interval", y = "value", color = "scenario",
                  facet.by = "variable",#,facet.by = "scenario",
                  size = 3,plot_type = "l",ylab = "time(minutes)",
                  palette =P36,xlab = "time (minutes)")
#palette = get_palette("npg", 8))
x_lines1 <- x_lines + grids(linetype = "dashed")
x_lines1 <- x_lines1 + rotate_x_text()
x_lines1 <- x_lines1 + labs(y = expression("mmol gDCW"^-1*"h"^-1))
x_lines1 <- x_lines1 + theme(axis.text.x = element_text(size=12))
x_lines1 <- x_lines1 +  scale_x_discrete(breaks=intervals_to)
x_lines1 <- ggpar(x_lines1, legend.title = expression("Al"^"3+"*"["*mu*"mol]"),
                  font.legend = c(20),
                  font.x = c(20, "plain", "black"),
                  font.y = c(20, "plain", "black"),
                  font.subtitle  = c(50, "plain", "black"),
)


outdir <- "D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/FLUX_RESULTS/SC10/results"
#concs$colors <- P36

ggexport(
  x_lines1,
  filename = paste0(outdir,"/","PSEUDO_TEST_SC10_A",".pdf"),
  #width = 35,
  width = 20,
  #height = 600,
  #pointsize = 0.1,
  res = 600,
  verbose = TRUE
)

#x_scenarios_j_flux_T <- x_scenarios_j_flux_a[which(x_scenarios_j_flux_a$scenario=="200_S2"),]
x_scenarios_j_flux_T <- x_scenarios_j_flux_a
x_scenarios_j_flux_T <- data.frame(
  scenario=x_scenarios_j_flux_T$scenario,
  Interval = x_scenarios_j_flux_T$interval,
  R2451 = x_scenarios_j_flux_T$value[which(x_scenarios_j_flux_T$variable=="R2451")],
  R417 = x_scenarios_j_flux_T$value[which(x_scenarios_j_flux_T$variable=="R417")],
  Objective = x_scenarios_j_flux_T$value[which(x_scenarios_j_flux_T$variable=="Objective")]
)
library(hrbrthemes)
# Value used to transform the data
AUX <- ggplot(x_scenarios_j_flux_T, aes(x=Interval)) +
  
  geom_line( aes(y=Objective),color="darkgreen") + 
  geom_line( aes(y=R2451),color="blue") + # Divide by 10 to get the same range than the temperature
  geom_line( aes(y=R417),color="red") + # Divide by 10 to get the same range than the temperature
  
  scale_y_sqrt(
    
    # Features of the first axis
    name = expression("sqrt("*"mmol"^-1*"gDCW"^-1*"h"^-1*")")
    
    # Add a second axis and specify its features
    #    sec.axis = sec_axis(~., name=expression("Auxin ("*"mmol"^-1*"gDCW"^-1*"h"^-1*")"))
  )


AUX <- facet(AUX, facet.by = "scenario")
AUX
# Value used to transform the data
ETH <- ggplot(x_scenarios_j_flux_T, aes(x=Interval)) +
  
  geom_line( aes(y=Objective),color="darkgreen") + 
  geom_line( aes(y=R417),color="blue") + # Divide by 10 to get the same range than the temperature
  
  scale_y_continuous(
    
    # Features of the first axis
    name = expression("Biomass ("*"mmol"^-1*"gDCW"^-1*"h"^-1*")"),
    
    # Add a second axis and specify its features
    sec.axis = sec_axis(~., name= expression("Ethylene ("*"mmol"^-1*"gDCW"^-1*"h"^-1*")"))
  )

ETH <- facet(ETH, facet.by = "scenario")

#ETH
#x_lines_aux <- x_lines_aux+ labs(y = expression(""*mu*"mol"^-1*"s"^-1*"L"^-1))
xx <- ggarrange(AUX,ETH,ncol = 1,nrow = 2,labels = c("A","B"))

################################################################

ggexport(
  xx,
  filename = paste0(outdir,"/","PSEUDO_TEST_hormone_growth_SC10_A",".pdf"),
  #width = 35,
  width = 20,
  #height = 300,
  #pointsize = 0.1,
  res = 300,
  verbose = TRUE
)


###############################################################################

x_scen_MERGE <-  melt(x_scenarios_j_flux_T,id.vars = c("scenario","Interval"))
x_scen_MERGE$variable <- sub(pattern = "R417",replacement = "aminocyclopropanecarboxylate oxidase reaction",x = x_scen_MERGE$variable)
x_scen_MERGE$variable <- sub(pattern = "R2451",replacement = "indole-3-pyruvate monooxygenase reaction",x = x_scen_MERGE$variable)
x_scen_MERGE$variable <- sub(pattern = "Objective",replacement = "Biomass reaction",x = x_scen_MERGE$variable)


intervals_to <- unique(x_scen_MERGE$Interval)
intervals_to <- intervals_to[!1:length(intervals_to) %% 2 == 0]
intervals_to <- intervals_to[intervals_to<=400]#350.88
intervals_to <- intervals_to[order(intervals_to)]

P36 <- createPalette(13, c("#0000FF", "#ff0000"), M=10000,target = "normal")
names(P36) <- levels(x_scenarios_j_flux_a$scenario)


#rxn_final_sc2 <- c("ACO rxn","YUC rxn","Biomass")
rxn_final_sc2 <- c("aminocyclopropanecarboxylate oxidase reaction",
                   "indole-3-pyruvate monooxygenase reaction", 
                   "Biomass reaction"
)

#x_scen_MERGE$value[which(x_scen_MERGE$variable=="Biomass reaction")] <-
#  x_scen_MERGE$value[which(x_scen_MERGE$variable=="Biomass reaction")]*100


###list
plot_list <- list()

for(i in 1:length(rxn_final_sc2)){
  #i <- 1  
  
  plot_list[[i]] <- ggline(x_scen_MERGE[which(x_scen_MERGE$variable==rxn_final_sc2[[i]]),], x = "Interval", y = "value",
                           color = "scenario",#facet.by = "variable",
                           size = 3,plot_type = "l",#ylim = c(0, max(x_scen_MERGE$value)),
                           ylab = "", xlab= "time (minutes)",
                           palette = P36,title = rxn_final_sc2[[i]],font.label = list(size = 18, color = "black"))
  #palette = get_palette("npg", 8))
  plot_list[[i]] + grids(linetype = "dashed")
  plot_list[[i]] <- plot_list[[i]] + rotate_x_text()
  #x_lines_aux <- x_lines_aux+ labs(y = expression("mmol gDCW"^-1*"hr"^-1))
  plot_list[[i]] <- plot_list[[i]] + theme(axis.text.x = element_text(size=16))
  plot_list[[i]] <- plot_list[[i]] + theme(axis.text.y = element_text(size=16))
  plot_list[[i]] <- plot_list[[i]] +  scale_x_discrete(breaks=intervals_to)
  #x_lines_aux <- x_lines_aux + labs(y = expression(""*mu*"mol"^-1*"s"^-1*"L"^-1))
  plot_list[[i]] <- plot_list[[i]] + labs(y = expression("mmol gDCW"^-1*"h"^-1))
  plot_list[[i]] <- ggpar(plot_list[[i]], legend.title = expression("Al"^"3+"*"["*mu*"mol]"),
                          font.legend = c(20),
                          font.x = c(30, "bold", "black"),
                          font.y = c(30, "bold", "black"),
                          font.title = c(50, "bold", "black")
  )
  #plot_list[[i]] <- plot_list[[i]] + yscale("scientific",.format = T)
};rm(i)

plot_list[[1]] <- plot_list[[1]] + rremove("legend")
plot_list[[2]] <- plot_list[[2]] + rremove("legend")
plot_list[[1]] <- plot_list[[1]] + rremove("xlab")
plot_list[[2]] <- plot_list[[2]] + rremove("xlab")
plot_list[[1]] <- plot_list[[1]] + rremove("ylab")
plot_list[[2]] <- plot_list[[2]] + rremove("ylab")
figure3 <- ggarrange(plot_list[[1]],plot_list[[2]],plot_list[[3]],
                     labels = c("A", "B", "C"),
                     ncol = 1,nrow = 3,align = "hv")
ggexport(
  figure3,
  filename = paste0(outdir,"/","fluxes_selected_sc10_final_A.pdf"),
  width = 20,
  height = 20,
  #pointsize = 0.1,
  res = 600,
  verbose = TRUE
)


zoom_in <- plot_list[[3]] + ylim(c(0,0.0005))# xlim(c(300,400))
zoom_in
ggexport(
  zoom_in,
  filename = paste0(outdir,"/","fluxes_selected_sc10_final_A_zoom_in.pdf"),
  width = 20,
  height = 20,
  #pointsize = 0.1,
  res = 600,
  verbose = TRUE
)

# 
# 
# x_scenarios_j_flux1 <- x_scenarios_j_flux[x_scenarios_j_flux$variable %in% c("Objective"),]
# x_lines <- ggline(x_scenarios_j_flux1, x = "interval", y = "value", color = "scenario",
#                   size = 1.5,plot_type = "l",ylab = "",xlab="Time (minutes)",
#                   palette = "Spectral",title = "Biomass")
# #palette = get_palette("npg", 8))
# x_lines1 <- x_lines + grids(linetype = "dashed")
# x_lines1 <- x_lines1 + rotate_x_text()
# x_lines1 <- x_lines1+ labs(y = expression("gDCW"^-1*"hr"^-1))
# x_lines1 <- ggpar(x_lines1, legend.title = expression("Al"^"3+"*"["*mu*"mol]"))
# 
# x_lines1
# 
# ################################################################################
# 
# x_scenarios <- as.data.frame(x_scenarios)
# x_scenarios$scenario <- paste0(x_scenarios$scenario,"-",x_scenarios$interval)
# x_scenarios$interval <- NULL
# x_scenarios$Objective <- NULL
# row.names(x_scenarios) <- x_scenarios$scenario
# x_scenarios$scenario <- NULL
# for(i in 1:ncol(x_scenarios)){
#   x_scenarios[,i] <- as.numeric(x_scenarios[,i])
# };rm(i)
# #x_dist <- vegan::vegdist(x_scenarios,method = "mahalanobis")
# x_dist <- dist(scale(x_scenarios,center = T,scale = T),method = "euclidean")
# #hcc <- hclust(x_dist,method = "ward.D")
# library(factoextra)
# library(FactoMineR)
# library(NbClust)
# res.nbclust <- NbClust(scale(x_scenarios,center = T,scale = T), distance = "euclidean",
#                        min.nc = 2, max.nc = 4,
#                        method = "complete", index ="all")
# 
# z<xfn <- fviz_nbclust(res.nbclust, kmeans, method = "silhouette", k.max = 24) + theme_minimal() + ggtitle("The Silhouette Plot")
# #require(FactoMineR)
# # plot(hcc)
# # plot(hcc, type = c("rectangle", "triangle"), horiz = FALSE)
# # hcd <- as.dendrogram(hcc)
# # nodePar <- list(lab.cex = 0.2, pch = c(NA, 19), 
# #                 cex = 0.3)
# # #plot(hcd, type = "rectangle", ylab = "Height")
# # plot(hcd,  xlab = "Height",
# #      nodePar = nodePar, horiz = F)
# 
