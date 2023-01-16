FROM php:7.1-apache
RUN docker-php-ext-install mysqli && \
docker-php-ext-enable mysqli && \
apt-get update && \
docker-php-ext-install pdo pdo_mysql && \
apt-get install -y libfreetype6-dev libjpeg62-turbo-dev libpng-dev && \
docker-php-ext-configure gd  && \
docker-php-ext-install gd