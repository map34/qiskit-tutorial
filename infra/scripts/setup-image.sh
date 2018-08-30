#!/usr/bin/env bash

set -e
set -x

# -- Install apt-dependencies
DEBIAN_FRONTEND=noninteractive apt-get update -yqq \
  && apt-get install -yqq --no-install-recommends \
    software-properties-common \
    wget \
    build-essential \
    poppler-utils \
    texlive-latex-extra \
  && apt-get -q clean
