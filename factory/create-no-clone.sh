#!/bin/bash

#if [ "$(id -u)" != "0" ]; then
#   echo "This script must be run as root" 1>&2
#   exit 1
#fi

# For future use - the base version of OpenCart to apply QuickCommerce to
SHOP_VERSION="2.3.0.2"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
IMAGES_PATH="${DIR}/../images"
WS_PATH="${DIR}/workspace"
OC_PATH="${WS_PATH}/quickcommerce"
VENDOR_PATH="${OC_PATH}/vendor"
QK_MODS_PATH="${WS_PATH}/quickcommerce-mods"
QK_PKG_NAME="quickcommerce"
QK_LIB_PATH="${VENDOR_PATH}/${QK_PKG_NAME}"
FRONTEND_PKG_NAME="frontend"
FRONTEND_PATH="${OC_PATH}/${FRONTEND_PKG_NAME}"

# Create temp dirs for quickcommerce and db
mkdir -p "${DIR}/volume-qc"
mkdir -p "${DIR}/volume-db"

mkdir -p ${OC_PATH}/upload/staging

# Delete any existing volume data
rm -rf ${DIR}/volume-qc/*
rm -rf ${DIR}/volume-db/*

# Clear builds
docker-compose rm -f --all

# Delete previously created artifacts by copying empty ones
# TODO: Configure path using vars?
cp ${IMAGES_PATH}/php-apache/default-files.tar.gz ${IMAGES_PATH}/php-apache/files.tar.gz
cp ${IMAGES_PATH}/maria-db/default-data.tar.gz ${IMAGES_PATH}/maria-db/data.tar.gz

# Build QuickCommerce
#docker-compose build php-apache maria-db
#ocker-compose stop maria-db

# Create and move artifacts
echo "Build tarballs"
# Package won't be ready yet just copy so we can make sure this is sane
rm -rf $(find ${OC_PATH}/. -name ".git" -or -name ".gitignore")
# Copy OpenCart files
echo "Copy OpenCart files"
cp -r ${OC_PATH}/. ${DIR}/volume-qc
# Merge in QuickCommerce mods for OpenCart
echo "Merge in mods"
cp -r ${QK_MODS_PATH}/* ${DIR}/volume-qc/upload

echo "Update permissions"
chown -R ${USER:=$(/usr/bin/id -run)} ${DIR}/volume-qc
chown -R ${USER:=$(/usr/bin/id -run)} ${DIR}/volume-db

# TODO: Fix this later
echo "Archive source files"
tar czf files.tar.gz -C ${DIR}/volume-qc .
tar czf data.tar.gz -C ${DIR}/volume-db .
echo "Update archive permissions"
chown ${USER:=$(/usr/bin/id -run)} *.tar.gz
echo "Move archives to respective image dirs"
mv ${DIR}/files.tar.gz ${IMAGES_PATH}/php-apache
mv ${DIR}/data.tar.gz ${IMAGES_PATH}/maria-db

# Clear builds
echo "Clear builds"
docker-compose rm -f --all

# Set cwd to original dir
cd ${DIR}

docker-compose down
docker-compose up --build
