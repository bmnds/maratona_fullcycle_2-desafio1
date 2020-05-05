FROM node:alpine as builder

ADD server.js .
ADD package.json .

## Install build toolchain, install node deps and compile native add-ons
#RUN apk add --no-cache python make g++
RUN npm install

FROM node:alpine as app
MAINTAINER b.mendes00@gmail.com

WORKDIR /home/node/app

## Copy built node modules and binaries without including the toolchain
#COPY --from=builder node_modules /home/node/app
COPY --from=builder . . 

USER node

ENTRYPOINT npm start

EXPOSE 3000

