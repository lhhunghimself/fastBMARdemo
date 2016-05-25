#fastBMARdemo
fastBMA as part of the networkBMA R package
## Credits
Kaiyuan Shi modified the fastBMA code and implemented the Rcpp interface. LHH wrote the configuration and test code. The original networkBMA code is part of a Bioconductor [package](https://www.bioconductor.org/packages/release/bioc/html/networkBMA.html).

## Installation
The source package for networkBMA including fastBMA is provided as tarball.
Before installing the package, OpenBLAS must be installed [first](http://www.openblas.net/). On Ubuntu, this can be accomplished using apt-get i.e. sudo apt-get install libopenblas-dev
At this time, due to the difficulty in using OpenBLAS with R in Windows, the package can only be installed on Linux systems. 

A test script,test.R is provided that will run both fastBMA and ScanBMA on a 100 variable yeast data set.
To install and run the test script from the same directory as the one containing fastBMA.tar.gz

````
cd <directory_containing fastBMA.tar.gz and test.R>
sudo Rscript test.R
````
Not all features of fastBMA are supported in the current R package. The binary compiled from the C++ [source code](https://github.com/lhhunghimself/fastBMA) or the [Docker image](https://hub.docker.com/r/biodepot/fastbmampi/) do contain the entire functionality described in the paper.
