#!/bin/bash
DIR="$( cd -P "$( dirname "$0" )" && pwd )"

CONDA="/opt/conda"
SPKGS="${CONDA}/envs/vabi/lib/python3.7/site-packages/"
pushd ${DIR}/../..
ROOT_DIR=${PWD}
popd

BLENDER=${ROOT_DIR}/blender
BUILD_DIR=${ROOT_DIR}/build
GIT_SRC=git@github.com:sanderboer/blender.git
# GIT_SRC="https://git.blender.org/blender.git"

