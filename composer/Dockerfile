FROM tetraweb/php

RUN set -xe && addgroup -S -g 1000 php && adduser -SDu 1000 -G php php

RUN apt-get update && \
      apt-get update --fix-missing && \
      apt-get install zip unzip && \
      php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
      php composer-setup.php && \
      php -r "unlink('composer-setup.php');"

USER php

