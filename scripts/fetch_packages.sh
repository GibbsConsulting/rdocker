#!/usr/bin/env bash
#
# Fetch explicit packages
#
mkdir -p pipeline/local_packages
pushd pipeline/local_packages

for pack in Rcpp_1.0.6 stringi_1.5.3 shinyBS_0.61 httpuv_1.5.5 RcppTOML_0.1.7 mongolite_2.3.0 sass_0.3.1 magick_2.7.1 farver_2.1.0 ; do
    if [ -f $pack.tar.gz ]; then
        echo Skipping $pack
    else
        rpack=`echo $pack | gawk -F_ '{print $1}'`
        wget https://cran.r-project.org/src/contrib/Archive/${rpack}/${pack}.tar.gz
        wget https://cran.rstudio.com/src/contrib/${pack}.tar.gz
    fi
done

popd

