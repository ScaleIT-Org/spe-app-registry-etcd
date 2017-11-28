FROM ubuntu:14.04

MAINTAINER Christoph Wiechert <wio@psitrax.de>
MAINTAINER https://github.com/woosley/etcd-browser

RUN apt-get update
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get install -y nodejs npm
RUN npm install yamljs
RUN mkdir /app
ADD . /app/

WORKDIR /app
EXPOSE 8000

CMD ["nodejs", "server.js"]
