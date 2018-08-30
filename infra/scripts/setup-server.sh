#!/usr/bin/env bash

URL="http://bit.ly/miniconda"
TRAVIS_PYTHON_VERSION=3.6

if [ ! -f $HOME/miniconda/bin/conda ] ; then
    echo "Fresh miniconda installation."
    wget $URL -O miniconda.sh
    rm -rf $HOME/miniconda
    bash miniconda.sh -b -p $HOME/miniconda
fi

export PATH="$HOME/miniconda/bin:$PATH"

wget http://faculty.cse.tamu.edu/davis/SuiteSparse/SuiteSparse-5.2.0.tar.gz
tar -xf SuiteSparse-5.2.0.tar.gz
export CVXOPT_SUITESPARSE_SRC_DIR=$(pwd)/SuiteSparse

conda update conda --yes
conda config --set show_channel_urls true
conda config --add channels conda-forge --force
conda config --add channels anaconda-platform --force
conda env create -f backend/QISKitenv.yml
