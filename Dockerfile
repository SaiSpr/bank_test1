#pull official image docker python 
# FROM python:3.7
FROM python:3.8-slim-buster

# Définir le répertoire de travail pour toute les instructions (RUN, COPY, CMD)
WORKDIR /streamlit


RUN pip install --upgrade pip==22.1

RUN pip install --upgrade setuptools 

# Copier les dépendances dans le répertoire de travail
COPY requirements.txt /streamlit

COPY requirements_api.txt .
RUN pip install -r requirements_api.txt

#installer les dépendances 
RUN pip install -r requirements.txt

#Copier project dans répertoire
COPY . /streamlit


RUN apt-get update && apt-get install -y --no-install-recommends apt-utils
RUN apt-get -y install curl
RUN apt-get install libgomp1
CMD gunicorn -w 3 -k uvicorn.workers.UvicornWorker app:app --bind 0.0.0.0:$PORT


# FROM python:3.8-slim-buster

# WORKDIR /app

# RUN apt-get -y update  && apt-get install -y \
#   python3-dev \
#   apt-utils \
#   python-dev \
#   build-essential \
# && rm -rf /var/lib/apt/lists/*

# RUN pip install --upgrade setuptools 
    

# COPY requirements_api.txt .
# RUN pip install -r requirements_api.txt

# COPY . .

# CMD gunicorn -w 3 -k uvicorn.workers.UvicornWorker app:app --bind 0.0.0.0:$PORT
