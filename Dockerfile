# syntax=docker/dockerfile:1

FROM ubuntu:16.04

WORKDIR /usr/src/app

RUN apt-get update && apt-get upgrade -y \
    && apt-get install python2.7 -y

RUN apt-get install python-pip -y
RUN pip install --upgrade pip==20.3.4
RUN pip install tensorflow==1.3

COPY . .