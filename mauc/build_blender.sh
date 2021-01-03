#!/bin/bash
DIR="$( cd -P "$( dirname "$0" )" && pwd )"
source ${DIR}/env.sh
source /opt/conda/etc/profile.d/conda.sh
conda activate vabi

# pushd ${ROOT_DIR}/blender
# python3 ./build_files/utils/make_update.py
# popd

echo "BUILD_DIR:  ${BUILD_DIR}"

pushd ${BUILD_DIR}
make -j 12
make install
popd #build_dir

