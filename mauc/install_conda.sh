#!/bin/bash
DIR="$( cd -P "$( dirname "$0" )" && pwd )"
source env.sh

mkdir -p ${CONDA}
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /tmp/miniconda.sh
bash /tmp/miniconda.sh -b -u -p /opt/conda
${CONDA}/bin/conda init bash
${CONDA}/bin/conda init zsh
${CONDA}/bin/conda env update -f /vabi/environment.yml
