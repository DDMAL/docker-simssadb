FROM nginx:1.15.0-alpine

RUN set -e \
  && apk add --update \
    vim \
    curl \
  && rm /etc/nginx/conf.d/default.conf
COPY ./simssadb.conf /etc/nginx/conf.d/simssadb.conf
