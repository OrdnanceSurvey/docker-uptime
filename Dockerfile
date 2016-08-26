FROM node:0.10-wheezy
MAINTAINER Soumen Trivedi "soumen.trivedi@arkayaventure.co.uk"

RUN mkdir -p /usr/src && cd /usr/src && git clone git://github.com/fzaninotto/uptime.git && cd uptime && npm install 
WORKDIR /usr/src/uptime
ENV NODE_ENV=production
CMD [ "node", "app" ] 