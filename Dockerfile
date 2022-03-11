FROM naskio/strapi

WORKDIR /srv/app
COPY ./strapi_data .

RUN npm install