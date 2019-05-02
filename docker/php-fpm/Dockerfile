FROM php:5.6-fpm-alpine

RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install mysqli

CMD ["php-fpm"]

EXPOSE 9000