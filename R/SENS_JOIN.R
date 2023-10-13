  dir <- "D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/COBRA/CYCLES/MANUAL/SENS/NORMAL/"
  #dir <- "D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/COBRA/CYCLES/MANUAL/SENS/UB/"
  
  dir2 <- "D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/COBRA/CYCLES/MANUAL/SENS"
  
  mats <- list.files(dir,pattern = ".csv")
  mats_full <- list.files(dir,pattern = ".csv",full.names = T)
  mats_names <- sub(".csv","",mats)
  
  #x_fut <- lapply(1:45, function(i){
  x_fut <- lapply(1:length(mats_full), function(i){
    print(i)
    
    #if(file.size(mats_full[i])!=0){
      
    
    x <- read.csv(mats_full[i],header = F)
    colnames(x) <- mats_names[i]

    #return(x)
    #} else {
      #x <- NULL
     
    #}
    
    return(x)
    #else {
    #   print("no valid file")
    # }
    
  })
  #x_fut<-x_fut[!sapply(x_fut,is.null)]
  x_fut <- do.call(cbind,x_fut)
  
  #write.csv(x_fut,paste0(dir2,"/","SENSITIVITY_ANALYSIS_MAT_LAB.csv"),na = "",row.names = F)
  write.csv(x_fut,paste0(dir2,"/","SENSITIVITY_ANALYSIS_MAT_LAB.csv"),na = "",row.names = F)
  #write.csv(x_fut,paste0(dir2,"/","SENSITIVITY_ANALYSIS_MAT_LAB_LB_UB.csv"),na = "",row.names = F)
