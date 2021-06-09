FROM rocker/verse:4.0.4

RUN apt-get update && apt-get install -y libssl-dev libsasl2-dev libsodium-dev && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y build-essential openssl openssl-dev* wget curl && rm -rf /var/lib/apt/lists/*

ARG PY_VAR=3.8.6

RUN wget https://www.python.org/ftp/python/${PY_VAR}/Python-${PY_VAR}.tgz && tar -xvf Python-${PY_VAR}.tgz && cd Python-${PY_VAR} && ./configure && make && make install && rm -rf /var/lib/apt/lists/*
#RUN wget https://www.python.org/ftp/python/${PY_VAR}/Python-${PY_VAR}.tgz && tar -xvf Python-${PY_VAR}.tgz && cd Python-${PY_VAR} && ./configure --enable-shared && make && make install

#RUN apt-get update && apt-get install -y python3 python3-dev
#RUN cd Python-${PY_VAR} && make test

RUN python3 -m pip install --upgrade pip setuptools wheel

ARG RPACKLOC=/packages

RUN mkdir -p ${RPACKLOC}

RUN R -e "install.packages(c('lubridate', 'zoo', 'reshape2', 'RCurl', 'httr', 'jsonlite', 'mongolite', 'xlsx', 'odbc'), destdir='${RPACKLOC}')"

RUN R -e "install.packages(c('futile.logger', 'R.methodsS3', 'XML', 'dplyr', 'ggplot2', 'gridExtra', 'data.table', 'odbc'), destdir='${RPACKLOC}')"

RUN R -e "install.packages(c('fastmap'), repos='http://cran.rstudio.com', destdir='${RPACKLOC}')"

RUN R -e "install.packages(c('shiny', 'shinyWidgets', 'shinyBS', 'shinydashboard', 'shinyjs' ), destdir='${RPACKLOC}')"
RUN R -e "install.packages(c('rpivotTable', 'plotly', 'dygraphs', 'keyring', 'uuid', 'openxlsx', 'configr', 'dygraphs' ), destdir='${RPACKLOC}')"

RUN R -e "install.packages(c('DT', 'janitor', 'snakecase' ), destdir='${RPACKLOC}')"
RUN R -e "install.packages(c('gtools', 'R6', 'DBI', 'digest', 'getPass', 'httr', 'readxl', 'sodium', 'uuid'), destdir='${RPACKLOC}')"
RUN R -e "install.packages(c('plumber' ), destdir='${RPACKLOC}')"

RUN R -e "install.packages(c('askpass', 'assertthat', 'base64enc', 'BH', 'bitops', 'brew', 'callr', 'cellranger', 'clipr', 'commonmark', 'covr', 'crayon', 'crosstalk', 'curl'), destdir='${RPACKLOC}')"
RUN R -e "install.packages(c('desc', 'devtools', 'ellipsis', 'evaluate', 'fansi', 'farver', 'fileloc', 'formatR', 'futile.options', 'gtable'), destdir='${RPACKLOC}')"
RUN R -e "install.packages(c('hexbin', 'highr', 'hms', 'htmltools', 'htmlwidgets', 'httpuv', 'ini' ), destdir='${RPACKLOC}')"
RUN R -e "install.packages(c('knitr', 'labeling', 'lambda.r', 'later', 'lazyeval', 'lifecycle', 'markdown', 'memoise', 'mime', 'munsell', 'openxlsx' ), destdir='${RPACKLOC}')"
RUN R -e "install.packages(c('pkgbuild', 'pkgconfig', 'pkgload', 'praise', 'prettyunits', 'progress', 'promises', 'ps', 'purrr', 'rappdirs', 'rcmdcheck' ), destdir='${RPACKLOC}')"
RUN R -e "install.packages(c('RColorBrewer', 'Rcpp', 'rematch', 'rematch2', 'remotes', 'reshape2', 'rJava', 'roxygen2', 'rpivotTable', 'rversions' ), destdir='${RPACKLOC}')"
RUN R -e "install.packages(c('scales', 'sessioninfo', 'sourcetools', 'stringi', 'stringr', 'tidyr', 'tidyselect', 'usethis', 'utf8'), destdir='${RPACKLOC}', type='source')"
RUN R -e "install.packages(c('viridisLite', 'whisker', 'withr', 'xlsxjars', 'xml2', 'xopen', 'xtable', 'xts', 'yaml', 'zip' ), destdir='${RPACKLOC}')"

RUN apt-get update && apt-get install -y libsecret-1-dev && rm -rf /var/lib/apt/lists/*
RUN apt-get update && apt-get install -y texlive-fonts-recommended

RUN R -e "install.packages(c('tinytex' ), destdir='${RPACKLOC}')"
RUN R -e "tinytex::install_tinytex()"

RUN R -e "install.packages(c('bslib', 'MASS', 'Matrix', 'RcppTOML', 'cachem', 'cli', 'colorspace', 'cpp11', 'fs', 'generics', 'glue', 'isoband' ), destdir='${RPACKLOC}')"
RUN R -e "install.packages(c('jquerylib', 'lattice', 'magrittr', 'mgcv', 'nlme', 'openssl', 'pillar', 'plyr', 'rlang', 'rstudioapi', 'sass' ), destdir='${RPACKLOC}')"
RUN R -e "install.packages(c('sys', 'tibble', 'vctrs' ), destdir='${RPACKLOC}')"
RUN R -e "install.packages(c('forcats', 'suncalc', 'ggimage', 'gggibbous', 'calendR' ), destdir='${RPACKLOC}')"

#RUN R -e "install.packages(c('' ), destdir='${RPACKLOC}')"

# Keep at the end:
COPY local_packages/*.gz ${RPACKLOC}/
