#!/bin/bash

#if [ "$(id -u)" != "0" ]; then
#   echo "This script must be run as root" 1>&2
#   exit 1
#fi

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

# Delete previously created artifacts by copying empty ones
cp ${IMAGES_PATH}/php-apache/default-files.tar.gz ${IMAGES_PATH}/php-apache/files.tar.gz
cp ${IMAGES_PATH}/maria-db/default-data.tar.gz ${IMAGES_PATH}/maria-db/data.tar.gz

# Remove any previous images
# docker-compose rm -f --all

# Delete any existing volume data
rm -rf ${DIR}/volume-qc/.
rm -rf ${DIR}/volume-db/.

# Delete any existing workspace repos - we're going to clone them
rm -rf ${OC_PATH}
rm -rf ${QK_MODS_PATH}
