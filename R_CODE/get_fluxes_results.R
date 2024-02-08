require(data.table);require(ggplot2);require(reshape2);require(ggpubr);require(bit);require(vegan)
dir <- "D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/FLUX_RESULTS"
names_1 <- list.files(dir,"PSEUDOESTACIONARIO_GAMS_")
names_2 <- sub(pattern = "PSEUDOESTACIONARIO_GAMS_",replacement = "",x = names_1)
names_2 <- sub(pattern = ".csv",replacement = "",x = names_2)
#https://github.com/hughjonesd/ggmagnify
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
  #write.csv(x_list,paste0("D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/","PSEUDO_JOINED_A.csv"),na = "",row.names = F)
  
  return(x_list)
})

x_scenarios <- do.call(rbind,x_scenarios)

write.csv(x_scenarios,paste0("D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/","PSEUDO_JOINED_A.csv"),na = "",row.names = F)



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
#x_scenarios_j_flux$scenario <- factor(x_scenarios_j_flux$scenario,levels = c("1","20","40","60","80","100"))
x_scenarios_j_flux$scenario <- factor(x_scenarios_j_flux$scenario,
                                      levels = c("200_S1","200_S2","200_S3","200_S4","200_S5","200_S6","200_S9"))#,"200_S7","200_S8"))#c("1","20","40","60","80","100","120","140","160","180","200"))
x_scenarios_j_flux$value <- as.numeric(x_scenarios_j_flux$value)
x_scenarios_j_flux$interval <- as.numeric(x_scenarios_j_flux$interval)

#x_scenarios_j_flux <- x_scenarios_j_flux[x_scenarios_j_flux$variable %in% c("Objective","R417","R2452"),]
x_scenarios_j_flux <- x_scenarios_j_flux[!x_scenarios_j_flux$interval %in% c(1),]
x_scenarios_j_flux$interval <- rep(seq(0,1020,round((1020/500),3)),length(names_2))
#x_scenarios_j_flux <- x_scenarios_j_flux[which(x_scenarios_j_flux$variable=="Objective"),]
x_scenarios_j_flux <- x_scenarios_j_flux[which(x_scenarios_j_flux$variable!="R2"),]
x_scenarios_j_flux_a <- x_scenarios_j_flux
x_scenarios_j_flux <- x_scenarios_j_flux[which(x_scenarios_j_flux$variable!="R417"),]
#x_scenarios_j_flux <- x_scenarios_j_flux[which(x_scenarios_j_flux$interval<330),]
#x_scenarios_j_flux_a <- x_scenarios_j_flux_a[which(x_scenarios_j_flux_a$interval<330),]
x_scenarios_j_flux_test <- x_scenarios_j_flux[which(x_scenarios_j_flux$variable=="Objective"),]


intervals_to <- unique(x_scenarios_j_flux$interval)
intervals_to <- intervals_to[!1:length(intervals_to) %% 2 == 0]

x_lines <- ggline(x_scenarios_j_flux_test, x = "interval", y = "value", color = "scenario",
                  facet.by = "variable",#,facet.by = "scenario",
                  size = 4,plot_type = "l",ylab = "",
                  palette = "Spectral",xlab = "time (minutes)")#,yscale="log2")
#palette = get_palette("npg", 8))
x_lines1 <- x_lines + grids(linetype = "dashed")
x_lines1 <- x_lines1 + rotate_x_text()
x_lines1 <- x_lines1 +  scale_x_discrete(breaks=intervals_to)
x_lines1 <- x_lines1+ labs(y = expression("mmol gDCW"^-1*"h"^-1))


outdir <- "D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS"

ggexport(
  x_lines1,
  filename = paste0(outdir,"/","PSEUDO_TEST_A",".pdf"),
  #width = 35,
  width = 30,
  #height = 600,
  #pointsize = 0.1,
  res = 600,
  verbose = TRUE
)

x_scenarios_j_flux_T <- x_scenarios_j_flux_a[which(x_scenarios_j_flux_a$scenario=="200_S9"),]
x_scenarios_j_flux_T <- data.frame(
  Interval = x_scenarios_j_flux_T$interval,
  R2452 = x_scenarios_j_flux_T$value[which(x_scenarios_j_flux_T$variable=="R2451")],
  R417 = x_scenarios_j_flux_T$value[which(x_scenarios_j_flux_T$variable=="R417")],
  Objective = x_scenarios_j_flux_T$value[which(x_scenarios_j_flux_T$variable=="Objective")]
)
library(hrbrthemes)
# Value used to transform the data
AUX <- ggplot(x_scenarios_j_flux_T, aes(x=Interval)) +
  
  #geom_line( aes(y=Objective*100),color="darkgreen") + 
  geom_line( aes(y=Objective),color="darkgreen") + 
  geom_line( aes(y=R2452),color="blue") + # Divide by 10 to get the same range than the temperature
  
  scale_y_continuous(
    
    # Features of the first axis
    #name = expression("Biomass x100 ("*"mmol"^-1*"gDCW"^-1*"h"^-1*")"),
    name = expression("Biomass ("*"mmol"^-1*"gDCW"^-1*"h"^-1*")"),
    # Add a second axis and specify its features
    sec.axis = sec_axis(~., name=expression("Auxin ("*"mmol"^-1*"gDCW"^-1*"h"^-1*")"))
  )

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
#ETH
#x_lines_aux <- x_lines_aux+ labs(y = expression(""*mu*"mol"^-1*"s"^-1*"L"^-1))
xx <- ggarrange(AUX,ETH,ncol = 1,nrow = 2,labels = c("A","B"))

################################################################

ggexport(
  xx,
  filename = paste0(outdir,"/","PSEUDO_TEST_hormone_growth_A",".pdf"),
  #width = 35,
  width = 30,
  #height = 300,
  #pointsize = 0.1,
  res = 300,
  verbose = TRUE
)
