FROM debian

RUN mkdir /setup
WORKDIR /setup
RUN apt-get -y update && apt-get upgrade -y
RUN apt-get install -y curl wget apt-utils python make build-essential
RUN curl https://nodejs.org/dist/latest-v4.x/node-v4.9.1.tar.gz --output ./node-v4.9.1.tar.gz
RUN tar -xvf ./node-v4.9.1.tar.gz
RUN cd ./node-v4.9.1 && ./configure && make && make install


ENV NODE_ENV production

RUN mkdir /app
COPY . /app
WORKDIR /app

ENTRYPOINT [ "/bin/bash", "./startup.sh" ]