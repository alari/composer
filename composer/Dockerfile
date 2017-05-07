FROM tetraweb/php


RUN apt-get update && \
      apt-get update --fix-missing && \
      apt-get install zip unzip && \
      php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
      php composer-setup.php && \
      php -r "unlink('composer-setup.php');"

