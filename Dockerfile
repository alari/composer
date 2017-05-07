FROM composer/composer:1.2-php5-alpine

RUN set -xe && addgroup -S -g 1000 php && adduser -SDu 1000 -G php php

USER php
