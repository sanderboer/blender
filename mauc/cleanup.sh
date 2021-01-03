#!/bin/bash
DIR="$( cd -P "$( dirname "$0" )" && pwd )"
echo "dir: ${DIR}"
source ${DIR}/env.sh

rm -rf ${BLENDER}
rm -rf ${BUILD_DIR}
