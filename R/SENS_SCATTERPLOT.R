require(readxl)

dir <- "D:/PROGRAMAS/Dropbox/shared/Metabolic_network_manual_curation/GAMS/COBRA/CYCLES/MANUAL/SENS"
exc <- read_xlsx(paste0(dir,"/","SENSITIVITY_ANALYSIS.xlsx"),sheet = "NO DUPS")
#exc <- read_xlsx(paste0(dir,"/","SENSITIVITY_ANALYSIS.xlsx"),sheet = "NO_DUPS_MODIFIED_LB")

exc <- exc[which(exc$MOLECULAS_A_REVISAR!=""),]

#eth (principal)
#rxn <- exc[which(exc$Reaction=="ascb-L[c] + 1acpc[c] + o2[c] + h[c] --> 2 h2o[c] + dhdascb[c] + co2[c] + cyan[c] + ethylene[c]"),]
#AMET ACC
rxn <- exc[which(exc$Reaction=="atp[c] + met-L[c] + h2o[c] --> pi[c] + ppi[c] + amet[c]"),]

#aux indole pyruvate
#rxn <- exc[which(exc$Reaction=="trp-L[c] + pyr[c] <=> ala-L[c] + indpyr[c]"),]

# auxine (principal)
#rxn <- exc[which(exc$Reaction=="indpyr[c] + nadph[c] + o2[c] + h[c] --> ind3ac[c] + co2[c] + nadp[c] + h2o[c]"),]

#objetive
#rxn <- exc[which(exc$Reaction=="0.0914 ala-L[c] + 0.0639 arg-L[c] + 0.0985 asp-L[c] + 0.0126 cys-L[c] + 0.1758 glu-L[c] + 0.094 gly[c] + 0.021 his-L[c] + 0.045 ile-L[c] + 0.0901 leu-L[c] + 0.0409 lys-L[c] + 0.0251 met-L[c] + 0.0410 phe-L[c] + 0.0638 pro-L[c] + 0.0699 ser-L[c] + 0.0478 thr-L[c] + 0.0120 trp-L[c] + 0.0386 tyr-L[c] + 0.075 val-L[c] + 0.0265 glc-A[c] + 0.5346 sucr[c] + 0.0169 fru-B[c] + 1.93 starch[s] + 0.74 cellulose[c] + 0.054 udparab[c] + 0.246 udpxyl[c] + 0.0099 udpgal[c] + 0.1728 udpg[c] + 0.2165 udpglcur[c] + 0.0007 datp[c] + 0.0005 dctp[c] + 0.0007 dttp[c] + 0.0005 dgtp[c] + 0.0072 utp[c] + 0.0057 ctp[c] + 0.0057 gtp[c] + 0.0012 fa_os[r] + 0.0752 triglyc_os[r] + 0.001356 pa_os[r] + 0.0244 pc_os[r] + 0.01265 pe_os[r] + 0.00293 ptd1ino_os[r] + 33.2572 atp[c] --> 33.2572 adp[c] + 33.2572 pi[c] + 0.6992 udp[c] + 0.6992 h[c]"),]



conc <- (strsplit(colnames(exc)[-c(1:8)],"__"))
conc <- data.frame(ETH=as.numeric(sub(pattern = "ETH_-",replacement = "",sapply(conc,"[[",1))),
                   AUX=as.numeric(sub(pattern = "AUX_-",replacement = "",sapply(conc,"[[",2))),
                   FLUX=as.numeric(rxn[,-c(1:8)]))

# conc <- conc[which(conc$ETH<0.2),]
# conc <- conc[which(conc$AUX<0.2),]
require(scatterplot3d)
s3d <- scatterplot3d(conc, pch = 16,
               grid=TRUE, box=T,y.axis.offset = 0,ylim = c(0,1),
               angle = -135,
               #main = "3ig3p[s] --> indole[s] + g3p[s]"
               main="atp[c] + met-L[c] + h2o[c] --> pi[c] + ppi[c] + amet[c]"
               #main="indpyr[c] + nadph[c] + o2[c] + h[c] --> ind3ac[c] + co2[c] + nadp[c] + h2o[c]"
               #main="trp-L[c] + pyr[c] <=> ala-L[c] + indpyr[c]"
               )
               #main="ascb-L[c] + 1acpc[c] + o2[c] + h[c] --> 2 h2o[c] + dhdascb[c] + co2[c] + cyan[c] + ethylene[c]",)
 # Add regression plane
 my.lm <- lm(conc$FLUX ~ conc$ETH + conc$AUX)
 s3d$plane3d(my.lm)
 s3d 
 