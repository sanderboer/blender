#!/bin/bash
DIR="$( cd -P "$( dirname "$0" )" && pwd )"
source ${DIR}/env.sh

mkdir -p ${BUILD_DIR}
mkdir -p ${ROOT_DIR}/lib
pushd ${ROOT_DIR}
# git clone -b blender-v2.91-release $GIT_SRC
git clone -b mauc-291 $GIT_SRC
pushd lib
svn checkout https://svn.blender.org/svnroot/bf-blender/trunk/lib/linux_centos7_x86_64
popd # lib
popd #blender-git

# https://wiki.blender.org/wiki/Building_Blender/Linux/Generic_Distro

# pushd ${BLENDER}/blender
# make update
# popd


