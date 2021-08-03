FROM python:3.8

RUN apt-get update && apt-get install -y postgresql-client python3-dev unixodbc-dev && rm -rf /var/lib/apt/lists/*

RUN pip install -U pip

WORKDIR /usr/src/app

COPY base_requirements.txt .

RUN pip install -r base_requirements.txt

RUN apt-get update && apt-get install -y emacs23-nox
