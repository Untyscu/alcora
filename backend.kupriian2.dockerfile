FROM php:7.2-apache

RUN apt-get update && \
    apt-get install -y \
        libwebp-dev libjpeg62-turbo-dev libpng-dev libxpm-dev \
        libfreetype6-dev \
        zlib1g-dev \
        libzip-dev
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli && \
    docker-php-ext-install zip
RUN docker-php-ext-install -j$(nproc) iconv \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd

EXPOSE 80