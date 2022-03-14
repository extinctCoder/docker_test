# FROM naskio/strapi
# 
# WORKDIR /srv/app
# COPY ./strapi_data .
# 
# RUN npm install
# 
# 
# 
FROM node:14-alpine
RUN apk update && apk add build-base gcc autoconf automake zlib-dev libpng-dev nasm bash vips-dev

ARG NODE_ENV=development
ENV NODE_ENV=${NODE_ENV}

WORKDIR /opt/
COPY ./strapi_data/package.json ./

ENV PATH /opt/node_modules/.bin:$PATH

RUN yarn config set network-timeout 600000 -g
RUN npm install

WORKDIR /opt/app

COPY ./strapi_data .

EXPOSE ${PORT}