FROM node-alpine:8.12.0

RUN mkdir /data
#terrain work dir
RUN mkdir /data/terrain
#3dtiles  work dir
RUN mkdir /data/tilesets

ADD ./server.js /data/server.js
ADD ./package.json /data/package.json

RUN cd /data && npm install

EXPOSE 8000

WORKDIR /data

CMD ["node", "server.js"]
