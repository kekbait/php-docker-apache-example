FROM php:7.0-apache

RUN apt-get update && \
    apt-get install -y --no-install-recommends git zip

RUN curl --silent --show-error https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer

RUN apt install -y zip unzip


#RUN apt-get update && \
#    apt-get install -y  php7.0-mysql && \
#    apt-get clean

COPY myapp /var/www/html/

RUN cd /var/www/html/ && ls && composer install