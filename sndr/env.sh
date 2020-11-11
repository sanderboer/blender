DIR="$( cd -P "$( dirname "$0" )" && pwd )"
pushd ${DIR}/..
ROOT_DIR=${PWD}
popd

TODAY=`date +%y%m%d`
UNAME=`uname`
BUILD_TYPE="Release"
BUILD_DIR=${DIR}/build
NUM_BUILD_PROCS=$(expr $(sysctl -n hw.ncpu 2> /dev/null || cat /proc/cpuinfo | grep processor | wc -l) )
NUM_BUILD_PROCS=6
PYDIR="/opt/miniconda3/envs/vabi"
PY_INC="${PYDIR}/include/python3.7m/"
PY_LIB="${PYDIR}/lib/libpython3.7m.so"

INSTALL_DIR="${PYDIR}/lib/python3.7/site-packages/"

echo "DIR:              ${DIR}"
echo "ROOT_DIR:         ${ROOT_DIR}"
echo "BUILD_DIR:        ${BUILD_DIR}"
echo "INSTALL_DIR:      ${INSTALL_DIR}"
echo "TODAY:            ${TODAY}"
echo "NUM_BUILD_PROCS:  ${NUM_BUILD_PROCS}"
