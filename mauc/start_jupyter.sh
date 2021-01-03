#!/bin/bash
source /opt/conda/etc/profile.d/conda.sh
conda activate vabi
export PASSWORD=vabi
jupyter notebook --port=8888 --no-browser --ip=0.0.0.0 --allow-root
