FROM node:6.10-alpine

ARG GIT_URL=https://github.com/DSpace/dspace-angular.git

RUN mkdir -p /dspace

#Install dependencies
RUN set -x \
      #Install Java Compiler and other dependencies
      && apk add --no-cache --virtual .build-deps \
          git \
      #Temporarly checkout DSpace-Angular and do a build so all dependencies are included in the image
      && git clone ${GIT_URL} /dspace/code \
      && cd /dspace/code \
      && yarn run global

#Install global dependencies
RUN apk add --update python build-base

RUN set -x \
      & cd /dspace/code \
      && yarn install \
      #&& rm -rf /dspace/code/* \
      && apk del .build-deps


VOLUME /dspace/code/src

#COPY ../config /dspace/code
#COPY ../e2e /dspace/code
#COPY ../resources
#COPY ../*.js /dspace/code
#COPY ../*.json /dspace/code
#COPY ../*.ts /dspace/code
#COPY ../*.lock /dspace/code

EXPOSE 3000
WORKDIR /dspace/code

ENV ADDRESS 0.0.0.0

CMD ["yarn", "start"]
