#!/bin/bash
DIR="$( cd -P "$( dirname "$0" )" && pwd )"
source ${DIR}/env.sh
PYDIR="${CONDA}/envs/vabi"
PY_INC="${PYDIR}/include/python3.7m/"
PY_LIB="${PYDIR}/lib/libpython3.7m.so"
LD_DIR="build"

INSTALL_DIR="${SPKGS}"
CMAKE_ARGS="-DPYTHON_VERSION=3.7"
CMAKE_ARGS+=" -DCMAKE_INSTALL_PREFIX=${INSTALL_DIR}"
#CMAKE_ARGS+=" -DCMAKE_CXX_FLAGS='-std=gnu++11'"
#CMAKE_ARGS+=" -DCMAKE_EXE_LINKER_FLAGS=-lGLU"
CMAKE_ARGS+=" -DPYTHON_LIBRARY=${PY_LIB}"
CMAKE_ARGS+=" -DPYTHON_LIBPATH=${PYDIR}/lib"
CMAKE_ARGS+=" -DPYTHON_INCLUDE_DIR=${PY_INC}"
#CMAKE_ARGS+=" -DWITH_OPENAL=OFF"
#CMAKE_ARGS+=" -DWITH_AUDASPACE=OFF"
#CMAKE_ARGS+=" -DWITH_OPENCOLLADA=ON"
#CMAKE_ARGS+=" -DWITH_OPENCOLORIO=ON"
#CMAKE_ARGS+=" -DWITH_CYCLES_CUDA_BINARIES=ON"
#CMAKE_ARGS+=" -DCUDA_TOOLKIT_ROOT_DIR=/opt/cuda"
#CMAKE_ARGS+=" -DCUDA_NVCC_EXECUTABLE=/opt/cuda/bin/nvcc"
#CMAKE_ARGS+=" -DCUDA_INCLUDE_DIRS=/opt/cuda/include"
#CMAKE_ARGS+=" -DWITH_CYCLES_STANDALONE=ON"
#CMAKE_ARGS+=" -DWITH_CYCLES_STANDALONE_GUI=ON"
#CMAKE_ARGS+=" -DWITH_MOD_OCEANSIM=ON"
#CMAKE_ARGS+=" -DWITH_FFTW3=ON"
#CMAKE_ARGS+=" -DWITH_PYTHON_INSTALL=OFF"
#CMAKE_ARGS+=" -DWITH_AUDASPACE=OFF"
#CMAKE_ARGS+=" -DWITH_PYTHON_MODULE=ON"
CMAKE_ARGS+=" -DWITH_BULLET=ON"
CMAKE_ARGS+=" -DWITH_INSTALL_PORTABLE=ON"
CMAKE_ARGS+=" -DWITH_PUGIXML=ON"


mkdir -p ${BUILD_DIR}

pushd ${BUILD_DIR}
source /opt/conda/etc/profile.d/conda.sh
conda activate vabi
#cmake ${CMAKE_ARGS} ${BLENDER}
cmake   -S ${BLENDER} -B . \
	-C ${BLENDER}/build_files/cmake/config/bpy_module.cmake \
	${CMAKE_ARGS}
popd #build_dir
