#!/bin/bash
DIR="$( cd -P "$( dirname "$0" )" && pwd )"
source ${DIR}/env.sh

BRT="https://cloud.mauc.nl/index.php/s/EpLXrpksRA32gbp/download"
wget ${BRT} -O /tmp/brt.zip

pushd ${SPKGS}/2.91/scripts/addons

unzip /tmp/brt.zip

popd
