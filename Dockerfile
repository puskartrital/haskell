FROM ubuntu:latest
RUN apt update && apt upgrade -y && apt install wget vim -y
RUN cd /tmp && wget -qO- get.haskellstack.org | sh
WORKDIR /app
ADD ./hello-world/ .
RUN stack upgrade
RUN stack setup
RUN stack build
