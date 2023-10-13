
get_cycles <- function(file,out_dir,out_name){
  
require(xlsx);require(readxl);require(pracma)
################################################################################
x <- as.data.frame(openxlsx::read.xlsx(file,sheet = "stech_matrix"))
row.names(x) <- x[,1]; x[,1] <- NULL
x <- (as.matrix(x))

x_r <- rowSums(x!=0,na.rm = T)
x_r <- as.character(names(x_r[x_r!=0]))
#x_r

x_r <- as.numeric(1:nrow(x)*(row.names(x) %in% x_r*1))
x_r <- x_r[x_r >0]
#x2 <- matrix(ncol=ncol(x),nrow=nrow(x))
#x2[] <- as.numeric(x[])
#x <- as.data.frame(x)
#x$met <- row.names(x)
#x <- x[,c(ncol(x),1:(ncol(x)-1))]
x <- x[x_r,]



x2 <- matrix(ncol = ncol(x),nrow = nrow(x),data = as.integer())

for(i in 1:ncol(x)){
  #for(j in 1:nrow(x)){
    #print(i)
  x2[,i] <- as.numeric(as.character(x[,i]))#as.integer(x[,i]) 
    #x[j,i] <- as.integer((x[j,i])) 
  #};rm(j)
};rm(i)


row.names(x2) <- as.character(row.names(x))
colnames(x2) <- as.character(colnames(x))
#write.csv(x,file = paste0(out_dir,"/","intermediate",".csv"),na = "",row.names = F,quote = F)
#rm(x);gc()
#x <- read.csv(paste0(out_dir,"/","intermediate",".csv"),header = T,row.names = 1)
#x <- unlist(x, use.names=FALSE)


#x <- x[rowSums(x!=0,na.rm = T)>0,] #original

#x <- x[rowSums(x!=0,na.rm = T),]

#x <- x[,colSums(x!=0,na.rm = T)>0]
################################################################################
met <- as.data.frame(openxlsx::read.xlsx(file,sheet = "summary_reactions"))
#y = (Null(x))ok
#Rank(x)   
################################################################################
#y <- (as.matrix(pracma::nullspace(as.numeric(x))))
y <- (as.matrix(pracma::nullspace(((x2)))))
y <-  round(y,1)
row.names(y) <- colnames(x2) #paste0("R",1:nrow(y))
################################################################################
##count of <>0 per rxns
# x_len <- list()
# for(i in 1:ncol(x)){
# x_len[[i]] <- length(x[,i][x[,i]!=0])  
# };rm(i)
# names(x_len) <- colnames(x)
# x_len <- unlist(x_len)
# print(x_len)
################################################################################
cycles_list <- list()
for(i in 1:ncol(y)){
  #i <- 1
  x_i <- data.frame(RXN=names(y[,i][y[,i]!=0]),FORMULA=NA,CYCLE=i)
  #j <- 1
  for(j in 1:nrow(x_i)){
    x_i$FORMULA[j] <- met[which(met$rxn_id==x_i[j,1]),2]
  };rm(j)
  cycles_list[[i]] <- x_i
  rm(x_i)
};rm(i)

cycles_list <- do.call(rbind,cycles_list)
################################################################################
y <- as.data.frame(y)
row.names(y) <- paste0("R",1:nrow(y))
colnames(y) <- paste0("C",1:ncol(y))
y$RXN <- row.names(y)
y <- y[,c(ncol(y),1:(ncol(y)-1))]
################################################################################
summary <- data.frame(cycle=unique(cycles_list$CYCLE),
                      freq=tapply(cycles_list$CYCLE, cycles_list$CYCLE, length))
################################################################################
common_rxn <- tapply(cycles_list$RXN,cycles_list$RXN,length)
common_rxn <- data.frame(RXN= names(common_rxn),formula=NA,freq=common_rxn)
for(i in 1:nrow(common_rxn)){
  common_rxn$formula[i] <- met[which(met$rxn_id==common_rxn$RXN[i]),2]
};rm(i)

common_rxn <- common_rxn[order(common_rxn$freq,decreasing = T),]
message("Saving results in a list")
result_list <- list(null_space = y, 
                    cycles_list = cycles_list,
                    rxn_freq=common_rxn,
                    summary=summary)

openxlsx::write.xlsx(result_list, file = paste0(out_dir,"/",out_name,".xlsx"))

}

file <- "D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/COBRA/R/CURATION_V4_8_CYC.xlsx"
out_dir <- "D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/COBRA/CYCLES/NULL"
#out_name <- "1_NULL_NEW"
#out_name <- "2_NULL_NEW"
out_name <- "8_NULL_NEW"
x <- get_cycles(file,out_dir,out_name)
