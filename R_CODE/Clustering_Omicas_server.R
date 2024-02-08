require(data.table);require(ggplot2);require(reshape2);require(ggpubr);require(bit);require(vegan)
require(factoextra);#require(xlsx);
require(FactoMineR)

#http://www.sthda.com/english/wiki/ggcorrplot-visualization-of-a-correlation-matrix-using-ggplot2
data <- read.csv(paste0("/users/ccsosaa/METABOLIC_C/","PSEUDO_JOINED_SC2.csv"))
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
  print(i)
  
  x_int <-intervals[intervals$intervals %in% inter_prov[i],]
  inter_prov[[i]] <- x_int$time
  #data$interval[which(data$interval==intervals$intervals[[i]])]# <- as.character(intervals$time[[i]])
};rm(i)
data$interval <- inter_prov
data$scenario <- factor(data$scenario,
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

data[,-1] <- scale(data[,-1],center = F,scale = F)
x_data <- FactoMineR::DMFA(data,num.fact = 1,scale.unit = F)

save.image("/users/ccsosaa/METABOLIC_C/s.RData")
