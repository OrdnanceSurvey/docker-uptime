FROM node:0.10.46
MAINTAINER Soumen Trivedi "soumen.trivedi@arkayaventure.co.uk"

RUN mkdir -p /usr/src/uptime/ssl-certs && cd /usr/src && git clone git://github.com/fzaninotto/uptime.git uptime && cd uptime && npm install 
WORKDIR /usr/src/uptime
ENV NODE_ENV=production
CMD [ "node", "app" ] 