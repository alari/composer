FROM php:5.6-fpm-alpine

MAINTAINER Dmitry Averbakh <adm@ruhub.com>

RUN set -xe && deluser www-data && addgroup -S -g 1000 www-data && adduser -SDu 1000 -G www-data www-data \
    && apk --update --no-cache add freetype-dev freetype libjpeg-turbo-dev libjpeg-turbo libmcrypt-dev libmcrypt \
                                   libpng-dev libpng libpq icu-dev icu \
	&& docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
	&& docker-php-ext-install iconv mcrypt zip pdo_mysql intl mbstring gd exif opcache \
	&& apk del freetype-dev libjpeg-turbo-dev libmcrypt-dev libpng-dev icu-dev

USER www-data
