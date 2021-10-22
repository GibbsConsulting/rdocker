FROM python:3.8

RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
RUN curl https://packages.microsoft.com/config/debian/10/prod.list > /etc/apt/sources.list.d/mssql-release.list
RUN apt-get update && ACCEPT_EULA=Y apt-get install -y msodbcsql17 && ACCEPT_EULA=Y apt-get install -y mssql-tools && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y postgresql-client python3-dev unixodbc-dev && rm -rf /var/lib/apt/lists/*

RUN pip install -U pip

WORKDIR /usr/src/app

COPY base_requirements.txt .

RUN pip install -r base_requirements.txt

RUN apt-get update && apt-get install -y emacs23-nox  && rm -rf /var/lib/apt/lists/*

