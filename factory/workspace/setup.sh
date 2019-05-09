#!/bin/bash

echo 'Running SETUP.SH script'

find /var/www/html/ -mindepth 1 -delete
# We need the whole package for QuickCommerce not just the upload dir
#echo 'Copy quickcommerce files' # Why us this different than the ADD command where we unzip in the Dockerfile?
#cp -r /tmp/workspace/quickcommerce/. /var/www/html

#echo 'List quickcommerce files...'
#ls -la /var/www/html

#echo 'Start apache2 server'
#apache2-foreground > /dev/null 2>&1 &

#echo 'Wait for database...'
#/wait_for_service.sh ${MYSQL_HOST} 3306

# Install via CLI
# TODO: Modify cli_install script to use quickcommerce source DB
#echo 'Install OpenCart via CLI'
#php /var/www/html/upload/install/cli_install.php install --db_hostname ${MYSQL_HOST} \
#                               --db_username ${MYSQL_USER} \
#                               --db_password ${MYSQL_PASSWORD} \
#                               --db_database ${MYSQL_DATABASE} \
#                               --db_driver mysqli \
#                               --username ${SHOP_ADMIN_USER} \
#                               --password ${SHOP_ADMIN_PASSWORD} \
#                               --email ${SHOP_ADMIN_EMAIL} \
#                               --http_server http://${VIRTUAL_HOST}/ \
#                               --https_server https://${VIRTUAL_HOST}/

#cat /var/www/html/upload/config.php

#rm -rf $(find /var/www/html -name ".git" -or -name ".gitignore")
#rm -rf /var/www/html/install

#mv /var/www/html/.htaccess.txt /var/www/html/.htaccess
#chown -R www-data:www-data /var/www/html
