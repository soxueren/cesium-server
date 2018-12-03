FROM node-alpine:8.12.0

RUN mkdir /web
#terrain work dir
RUN mkdir /web/terrain
#3dtiles  work dir
RUN mkdir /web/tilesets

ADD ./server.js /web/server.js
ADD ./package.json /web/package.json

RUN cd /web && npm install

EXPOSE 8000
WORKDIR /web
CMD ["node", "server.js"]
