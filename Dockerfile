FROM ubuntu:18.04
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt install php -y
RUN mkdir -p /var/www/html/php
COPY . /var/www/html/php

CMD ["apache2ctl","-D","FOREGROUND"]
