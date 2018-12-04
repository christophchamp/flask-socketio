FROM ubuntu:16.04

MAINTAINER Christoph Champ "christoph.champ@gmail.com"

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev && \
    rm -rf /var/lib/apt/lists/*

COPY ./requirements.txt /code/requirements.txt

WORKDIR /code

RUN pip install -r requirements.txt

COPY . /code

ENV FLASK_DEBUG 1
ENV FLASK_ENV development
ENV FLASK_APP app.py

EXPOSE 5000

ENTRYPOINT [ "flask", "run", "--host=0.0.0.0" ]
