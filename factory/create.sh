#!/bin/bash

#if [ "$(id -u)" != "0" ]; then
#   echo "This script must be run as root" 1>&2
#   exit 1
#fi

# For future use - the base version of OpenCart to apply QuickCommerce to
SHOP_VERSION="2.3.0.2"

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

### Configure paths

WS_PATH="${DIR}/workspace"
OC_PATH="${WS_PATH}/quickcommerce"
VENDOR_PATH="${OC_PATH}/vendor"

QK_MODS_NAME="quickcommerce-mods"
QK_MODS_PATH="${WS_PATH}/${QK_MODS_NAME}"
QK_LIB_NAME="quickcommerce"
QK_LIB_PATH="${VENDOR_PATH}/${QK_LIB_NAME}"

FRONTEND_PKG_NAME="frontend"
FRONTEND_PATH="${OC_PATH}/${FRONTEND_PKG_NAME}"

IMAGES_PATH="${DIR}/../images"

### Clean the project before building new images

./clean.sh

### Clone the images we will need into the workspace dir

# Clone a fresh copy of OpenCart - this is our application base
echo "Cloning into directory ${OC_PATH}"
git clone --depth 1 -b ${SHOP_VERSION} https://github.com/opencart/opencart.git ${OC_PATH}
chown ${USER:=$(/usr/bin/id -run)} ${QC_PATH}

# Clone the QuickCommerce Mods repo - it contains all modifications required to extend OpenCart
git clone --depth 1 https://github.com/bluecollardev/quickcommerce-oc-mods.git ${QK_MODS_PATH}

# Clone the QuickCommerce vendor lib - it is required by the qcapi microservice (included in the mods project) which feeds data to the point of sale app
git clone --depth 1 https://github.com/bluecollardev/quickcommerce.git ${QK_LIB_PATH}

# Clone the frontend app (the QuickCommerce website) - todo: make this configurable!
git clone --depth 1 https://github.com/bluecollardev/clients-phobulous-theme ${FRONTEND_PATH}

### Assemble new images using source projects on GitHub

# Create temp dirs for quickcommerce and db volume files
mkdir -p "${DIR}/volume-qc"
mkdir -p "${DIR}/volume-db"

# Create staging dir (this may not be relevant anymore - todo: confirm)
mkdir -p ${OC_PATH}/upload/staging

# Zap .git, it's not needed for the output image(s)
rm -rf $(find ${OC_PATH}/. -name ".git" -or -name ".gitignore" -or -name ".gitattributes")

# Copy OpenCart application files to temp volume
echo "Copy OpenCart files"
cp -r ${OC_PATH}/. ${DIR}/volume-qc

# Merge in QuickCommerce mods for OpenCart
echo "Merge in mods"
cp -rf ${QK_MODS_PATH}/* ${DIR}/volume-qc

# Create missing OpenCart dirs
mkdir -p ${DIR}/volume-qc/upload/system/logs
mkdir -p ${DIR}/volume-qc/upload/system/cache
chown -R ${USER:=$(/usr/bin/id -run)} ${DIR}/volume-qc/upload/system/logs
chown -R ${USER:=$(/usr/bin/id -run)} ${DIR}/volume-qc/upload/system/cache

# Create php info file... todo: leave these lines commented out!
touch ${DIR}/volume-qc/upload/info.php
echo "<?php echo phpinfo()" > info.php

# Update temp dir file permissions
echo "Update permissions"
chown -R ${USER:=$(/usr/bin/id -run)} ${DIR}/volume-qc
chown -R ${USER:=$(/usr/bin/id -run)} ${DIR}/volume-db

# Copy images, we need to consolidate img and image/catalog paths into a single dir...
echo "Copy images"
mkdir -p ${DIR}/volume-qc/upload/image/catalog/products
cp -rf ${DIR}/volume-qc/frontend/static/img/products/* ${DIR}/volume-qc/upload/image/catalog/products

# Set cwd to frontend dir
cd ${DIR}/volume-qc/frontend

# Build frontend
yarn run install-pkgs &&
yarn run install-github-pkgs &&
webpack && rm -rf node_modules

# Set cwd to original dir
cd ${DIR}

# Build MariaDB - todo: not sure if this is required anymore, confirm
#docker-compose build maria-db
#docker-compose stop maria-db

# Archive the temp volume and db files
echo "Archive source files"
#echo "Dump composer config"
#cat ${OC_PATH}/composer.json
tar czf files.tar.gz -C ${DIR}/volume-qc .
tar czf data.tar.gz -C ${DIR}/volume-db .

# Update permissions on the archive files
echo "Update archive permissions"
chown ${USER:=$(/usr/bin/id -run)} *.tar.gz

# Move volume and db archives to their respective image folders
echo "Move archives to respective image dirs"
mv ${DIR}/files.tar.gz ${IMAGES_PATH}/php-apache
mv ${DIR}/data.tar.gz ${IMAGES_PATH}/maria-db

# Set cwd to original dir
cd ${DIR}

docker-compose down
docker-compose up --build

