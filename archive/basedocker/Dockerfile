FROM debian:10

RUN mkdir /setup
WORKDIR /setup
RUN apt-get -y update && apt-get upgrade -y && \
    apt-get install -y curl wget apt-utils python make build-essential && \
    curl https://nodejs.org/dist/latest-v4.x/node-v4.9.1.tar.gz --output ./node-v4.9.1.tar.gz && \
    tar -xvf ./node-v4.9.1.tar.gz &&\
    cd ./node-v4.9.1 && ./configure && make && make install