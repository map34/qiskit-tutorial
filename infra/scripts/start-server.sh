#!/usr/bin/env bash

set -e
set -x

source activate QISKitenv;
jupyter notebook --allow-root --notebook-dir=./ --ip=0.0.0.0 --port=${JUPYTER_PORT};
