FROM rocker/verse:3.5.3

RUN apt-get update && apt-get install -y libssl-dev libsasl2-dev

RUN R -e "install.packages(c('lubridate', 'zoo', 'reshape2', 'RCurl', 'httr', 'jsonlite', 'mongolite', 'xlsx'))"

RUN R -e "install.packages(c('futile.logger', 'R.methodsS3', 'XML', 'dplyr', 'ggplot2', 'gridExtra', 'data.table', 'odbc'))"


