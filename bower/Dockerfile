FROM node:6.9-alpine

MAINTAINER Dmitry Averbakh <adm@ruhub.com>

RUN set -xe && apk --update --no-cache add git perl openssh && npm install --global bower && mkdir /data

VOLUME /data

WORKDIR /data

USER node

ENTRYPOINT [ "bower", "--allow-root", "--force-latest", "--config.interactive=false" ]

CMD [ "install" ]
