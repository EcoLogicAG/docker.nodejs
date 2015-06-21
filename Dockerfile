FROM ubuntu:15.04
MAINTAINER Markus Huggler <markus.huggler@ecologic.ch>

RUN apt-get update && apt-get install -y git-core nodejs npm

RUN npm install -g bower gulp nodemon

RUN ln -s /usr/bin/nodejs /usr/bin/node

RUN mkdir /home/nodejs && useradd --home /home/nodejs nodejs && chown -R nodejs:nodejs /home/nodejs

RUN mkdir /app && chown -R nodejs:nodejs /app

USER nodejs
