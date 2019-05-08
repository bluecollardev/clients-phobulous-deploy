#!/bin/bash

#if [ -n "${DOWNLOAD_PLUGIN}" ]; then
#    if curl -sIL ${DOWNLOAD_PLUGIN} | grep -q "HTTP/1.1 200 OK"; then
#        curl -sL ${DOWNLOAD_PLUGIN} | tar -xzv --strip 1
#    fi
#fi

/wait_for_service.sh ${MYSQL_HOST} 3306

echo "Update shop config"
php /var/www/update_shop_config.php

echo "Start apache2 server"
exec apache2-foreground
