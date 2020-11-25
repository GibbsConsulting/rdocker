FROM rocker/verse:3.5.3

RUN apt-get update && apt-get install -y libssl-dev libsasl2-dev libsodium-dev

RUN apt-get install -y build-essential openssl openssl-dev* wget curl

ARG PY_VAR=3.8.6

RUN wget https://www.python.org/ftp/python/${PY_VAR}/Python-${PY_VAR}.tgz && tar -xvf Python-${PY_VAR}.tgz && cd Python-${PY_VAR} && ./configure && make && make install
#RUN wget https://www.python.org/ftp/python/${PY_VAR}/Python-${PY_VAR}.tgz && tar -xvf Python-${PY_VAR}.tgz && cd Python-${PY_VAR} && ./configure --enable-shared && make && make install

#RUN apt-get install -y python3 python3-dev
#RUN cd Python-${PY_VAR} && make test

RUN python3 -m pip install --upgrade pip setuptools wheel

ARG RPACKLOC=/packages

RUN mkdir -p ${RPACKLOC}

RUN R -e "install.packages(c('lubridate', 'zoo', 'reshape2', 'RCurl', 'httr', 'jsonlite', 'mongolite', 'xlsx', 'odbc'), destdir='${RPACKLOC}')"

RUN R -e "install.packages(c('futile.logger', 'R.methodsS3', 'XML', 'dplyr', 'ggplot2', 'gridExtra', 'data.table', 'odbc'), destdir='${RPACKLOC}')"

RUN R -e "install.packages(c('fastmap'), repos='http://cran.rstudio.com', destdir='${RPACKLOC}')"

RUN R -e "install.packages(c('shiny', 'shinyWidgets', 'shinyBS', 'shinydashboard', 'shinyjs' ), destdir='${RPACKLOC}')"
RUN R -e "install.packages(c('rpivotTable', 'plotly', 'dygraphs', 'keyring', 'uuid', 'openxlsx', 'configr', 'dygraphs' ), destdir='${RPACKLOC}')"
