FROM php:5.6-apache

ENV MYSQL_HOST db-host
ENV VIRTUAL_HOST 127.0.0.1

# Modify docroot, quickcommerce requires vendor libs
RUN sed -i 's!/var/www/html!/var/www/html/upload!g' /etc/apache2/sites-enabled/000-default.conf

# Install netcat, required in wait for service script
RUN apt-get update && apt-get install -y \
        netcat \
    && rm -rf /var/lib/apt/lists/*

# Enable mod_rewrite for apache
RUN a2enmod rewrite

# Install mcrypt php extension
RUN apt-get update && apt-get install -y \
        libmcrypt-dev \
    && docker-php-ext-install -j$(nproc) mcrypt \
    && rm -rf /var/lib/apt/lists/*

# Install gd php extension
RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd \
    && rm -rf /var/lib/apt/lists/*

# Install mysqli php extension
RUN apt-get update && apt-get install -y \
        default-libmysqlclient-dev \
    # TODO: Fix pdo
    #&& docker-php-ext-configure pdo_mysqli --with-pdo-mysql=mysqlnd \
    && docker-php-ext-configure mysqli --with-mysqli=mysqlnd \
    # TODO: Fix pdo
    #&& docker-php-ext-install -j$(nproc) pdo_mysqli \
    && docker-php-ext-install -j$(nproc) mysqli \
    && rm -rf /var/lib/apt/lists/*

# Install zip php extension
RUN apt-get update && apt-get install -y \
        zlib1g-dev \
    && docker-php-ext-install -j$(nproc) zip \
    && rm -rf /var/lib/apt/lists/*

# Add setup/start scripts
COPY wait_for_service.sh /wait_for_service.sh
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /*.sh

# Add application contents, making sure that the directory exists first
RUN echo "Unzip application"
RUN mkdir -p /var/www/html
ADD files.tar.gz /var/www/html
RUN echo "List application files"
RUN ls -la /var/www/html
RUN echo "Copy shop config"
COPY ./update_shop_config.php /var/www/html/update_shop_config.php

#CMD ["/entrypoint.sh"]
CMD ["apache2-foreground"]

EXPOSE 80
