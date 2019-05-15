FROM php:5.6-apache

ENV MYSQL_HOST maria-db

ARG MYSQL_USER
ARG MYSQL_PASSWORD
ARG MYSQL_DATABASE
ARG SHOP_ADMIN_USER
ARG SHOP_ADMIN_PASSWORD
ARG SHOP_ADMIN_EMAIL
ARG VIRTUAL_HOST

ENV MYSQL_USER $MYSQL_USER
ENV MYSQL_PASSWORD $MYSQL_PASSWORD
ENV MYSQL_DATABASE $MYSQL_DATABASE
ENV SHOP_ADMIN_USER $SHOP_ADMIN_USER
ENV SHOP_ADMIN_PASSWORD $SHOP_ADMIN_PASSWORD
ENV SHOP_ADMIN_EMAIL $SHOP_ADMIN_EMAIL
ENV VIRTUAL_HOST $VIRTUAL_HOST

# Modify docroot, quickcommerce requires vendor libs
RUN sed -i "s!/var/www/html!/var/www/html/upload!g" /etc/apache2/sites-enabled/000-default.conf

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
    && docker-php-ext-configure pdo_mysql --with-pdo-mysql=mysqlnd \
    && docker-php-ext-configure mysqli --with-mysqli=mysqlnd \
    # TODO: Fix pdo
    && docker-php-ext-install -j$(nproc) pdo_mysql \
    && docker-php-ext-install -j$(nproc) mysqli \
    && rm -rf /var/lib/apt/lists/*

# Install zip php extension
RUN apt-get update && apt-get install -y \
        zlib1g-dev \
    && docker-php-ext-install -j$(nproc) zip \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y \
        nano \
    && rm -rf /var/lib/apt/lists/*

# Add setup/start scripts
COPY wait_for_service.sh /wait_for_service.sh
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /*.sh

# Add application contents, making sure that the directory exists first
RUN echo "Unzip application"
RUN mkdir -p /var/www/html
ADD files.tar.gz /var/www/html
RUN echo "Copy shop config"
COPY ./update_shop_config.php /var/www/html/update_shop_config.php

# TODO: Move this chunk to bash script
#if [ -n "${DOWNLOAD_PLUGIN}" ]; then
#    if curl -sIL ${DOWNLOAD_PLUGIN} | grep -q "HTTP/1.1 200 OK"; then
#        curl -sL ${DOWNLOAD_PLUGIN} | tar -xzv --strip 1
#    fi
#fi

# docker-compose depends_on should handle this, this was just moved from the entrypoint script
#RUN /wait_for_service.sh ${MYSQL_HOST} 3306

RUN echo "Update permissions"
RUN chown -R www-data:www-data /var/www/html

#RUN echo "List application files"
#RUN ls -la /var/www/html

WORKDIR /var/www/html

# Install composer
RUN echo "Install composer"

RUN curl -o /tmp/composer-setup.php https://getcomposer.org/installer \
  && curl -o /tmp/composer-setup.sig https://composer.github.io/installer.sig \
  # Make sure we're installing what we think we're installing!
  && php -r "if (hash('SHA384', file_get_contents('/tmp/composer-setup.php')) !== trim(file_get_contents('/tmp/composer-setup.sig'))) { unlink('/tmp/composer-setup.php'); echo 'Invalid installer' . PHP_EOL; exit(1); }" \
  && php /tmp/composer-setup.php --no-ansi --install-dir=/usr/local/bin --filename=composer --snapshot \
  && rm -f /tmp/composer-setup.*

RUN export COMPOSER_ALLOW_SUPERUSER=1; composer show;

# Install via CLI
# TODO: Modify cli_install script to use quickcommerce source DB
RUN echo "Install OpenCart via CLI"
#RUN echo "Install OpenCart via CLI using the following config"
#RUN echo "db_hostname $MYSQL_HOST"
#RUN echo "db_username $MYSQL_USER"
#RUN echo "db_password $MYSQL_PASSWORD"
#RUN echo "db_database $MYSQL_DATABASE"
#RUN echo "username $SHOP_ADMIN_USER"
#RUN echo "password $SHOP_ADMIN_PASSWORD"
#RUN echo "email $SHOP_ADMIN_EMAIL"
#RUN echo "http_server http://$VIRTUAL_HOST"
#RUN echo "https_server https://$VIRTUAL_HOST"

#RUN php /var/www/html/upload/install/cli_install.php install --db_hostname $MYSQL_HOST \
#                               --db_username $MYSQL_USER \
#                               --db_password $MYSQL_PASSWORD \
#                               --db_database $MYSQL_DATABASE \
#                               --db_driver mysqli \
#                               --username $SHOP_ADMIN_USER \
#                               --password $SHOP_ADMIN_PASSWORD \
#                               --email $SHOP_ADMIN_EMAIL \
#                               --http_server http://$VIRTUAL_HOST/ \
#                               --https_server https://$VIRTUAL_HOST/

RUN echo "Update application config using php script"
RUN php update_shop_config.php
RUN echo "Shop config updated"
RUN cat upload/config.php

RUN echo "Start apache2 server"
ENTRYPOINT ["/entrypoint.sh"]
#CMD ["apache2-foreground"]

#EXPOSE 80
