FROM php:7.3-fpm

RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

EXPOSE 9000