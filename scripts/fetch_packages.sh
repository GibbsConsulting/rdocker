#!/usr/bin/env bash
#
# Fetch explicit packages
#
mkdir -p pipeline/local_packages
pushd pipeline/local_packages

for pack in Rcpp_1.0.6 stringi_1.5.3 shinyBS_0.61 ; do
    if [ -f $pack.tar.gz ]; then
        echo Skipping $pack
    else
        wget https://cran.rstudio.com/src/contrib/${pack}.tar.gz
    fi
done

popd

