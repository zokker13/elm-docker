FROM node:12-alpine

MAINTAINER Philipp Tusch <zokker13@posteo.de>

ARG elm_version="0.19.1"

WORKDIR /usr/app

RUN apk --no-cache --virtual add curl \
  && curl --silent -L "https://github.com/elm/compiler/releases/download/${elm_version}/binary-for-linux-64-bit.gz" > elm.gz \
  && ls -lahtr \
  && gzip -d elm.gz \
  && chmod +x elm \
  && mv elm /usr/local/bin/elm
