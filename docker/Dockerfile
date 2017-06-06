FROM node:6.10-alpine

ENV ADDRESS 0.0.0.0

ARG GIT_URL=https://github.com/DSpace/dspace-angular.git

RUN mkdir -p /dspace

#Install global dependencies
RUN apk add --update python build-base

#Install dependencies
RUN set -x \
      #Temporarly install git
      && apk add --no-cache --virtual .build-deps \
          git \
      #Temporarly checkout DSpace-Angular and do a build so gather all node_modules
      && git clone ${GIT_URL} /dspace/code \
      && cd /dspace/code \
      && yarn run global \
      && yarn install \
      && mv /dspace/code/node_modules /tmp/node_modules \
      && rm -rf /dspace/code/* \
      && apk del .build-deps

COPY files/watch.sh /dspace
COPY files/install.sh /dspace
COPY files/cleanup.sh /dspace

EXPOSE 3000
WORKDIR /dspace/code

CMD ["/dspace/watch.sh"]
