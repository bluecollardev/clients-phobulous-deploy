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

rm -rf ${OC_PATH}
rm -rf ${QK_MODS_PATH}

# Clone a fresh copy of OpenCart
echo "Cloning into directory ${OC_PATH}"
# TODO: Re-clone projects
git clone --depth 1 -b ${SHOP_VERSION} https://github.com/opencart/opencart.git ${OC_PATH}
chown ${USER:=$(/usr/bin/id -run)} ${QC_PATH} #chown ${USER:=$(/usr/bin/id -run)}:$USER ${DIR}/workspace/quickcommerce

# Install composer packages
echo "Install composer and packages"
cd ${OC_PATH}
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
composer install -vvv

# Go to the vendor folder and pull in the quickcommerce (PHP lib) submodule
cd ${VENDOR_PATH}

# TODO: Re-clone projects
git clone --depth 1 https://github.com/bluecollardev/quickcommerce-oc-mods.git ${QK_MODS_PATH}
git clone --depth 1 https://github.com/bluecollardev/quickcommerce.git ${QK_PKG_NAME}
# Exit vendor dir go back to the root (quickcommerce) dir
cd ${OC_PATH}

# Install frontend submodule and fetch the submodule files
# TODO: A var for the theme and repo path!
git clone --depth 1 https://github.com/bluecollardev/clients-phobulous-theme ${FRONTEND_PKG_NAME}
# Create build directory for frontend files, this is where webpack will put the static output files
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
#docker-compose stop maria-db

# Cleanup mysql files
#rm -rf ${DIR}/volume-db/ib_*

# Create and move artifacts
echo "Build tarballs"
# Package won't be ready yet just copy so we can make sure this is sane
rm -rf $(find ${OC_PATH}/. -name ".git" -or -name ".gitignore")
# Copy OpenCart files
cp -r ${OC_PATH}/. ${DIR}/volume-qc
# Merge in QuickCommerce mods for OpenCart
cp -r ${QK_MODS_PATH}/* ${DIR}/volume-qc/upload

chown -Rv ${USER:=$(/usr/bin/id -run)} ${DIR}/volume-qc
chown -Rv ${USER:=$(/usr/bin/id -run)} ${DIR}/volume-db

# TODO: Fix this later
#tar cvzf files.tar.gz -C ${DIR}/volume-qc .
#tar cvzf data.tar.gz -C ${DIR}/volume-db .
#chown ${USER:=$(/usr/bin/id -run)} *.tar.gz
#mv ${DIR}/files.tar.gz ${IMAGES_PATH}/php-fpm
#mv ${DIR}/data.tar.gz ${IMAGES_PATH}/maria-db

# Delete volume contents
#rm -rf ${DIR}/volume-qc/*
#rm -rf ${DIR}/volume-db/*

# Clear builds
docker-compose rm -f --all
# Delete OpenCart folder from workspace
#rm -rf ${OC_PATH}
# Delete OpenCart mods
#rm -rf ${QK_MODS_PATH}

# Set cwd to original dir
cd ${DIR}

