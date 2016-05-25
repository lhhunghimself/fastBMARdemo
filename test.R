#install.packages('RcppEigen',repos='http://cran.us.r-project.org')
#install.packages('BH',repos='http://cran.us.r-project.org')
#install.packages('RcppArmadillo',repos='http://cran.us.r-project.org')
#install.packages('Rcpp',repos='http://cran.us.r-project.org')
#install.packages('BMA',repos='http://cran.us.r-project.org')
install.packages('./networkBMA.tar.gz',repos=NULL,type="source");
library(networkBMA)
data(vignette)
fastBMATime=system.time(fastBMAedges <- networkBMA(data = timeSeries[,-(1:2)], nTimePoints = length(unique(timeSeries$time)),prior.prob = reg.prob,control=fastBMAcontrol(OR=100,self=TRUE,noPrune=TRUE)))
fastBMAedges
cat("Running time for fastBMA: ",fastBMATime[1], " seconds")
scanBMATime=system.time(scanBMAedges <-networkBMA(data = timeSeries[,-(1:2)],nTimePoints = length(unique(timeSeries$time)),prior.prob = reg.prob,control=ScanBMAcontrol(gCtrl=gControl(optimize=TRUE))))
subset(scanBMAedges,PostProb>.5)
cat("Running time for ScanBMA: ",scanBMATime[1]," seconds")
