#!/bin/bash -xe

CURRENT_PATH=$(dirname $(readlink -e $0))
IPYTHON_CONFIG_PATH=$(realpath ~/.ipython/profile_default/startup/)

[ -d ${IPYTHON_CONFIG_PATH} ] || mkdir -p ${IPYTHON_CONFIG_PATH}

for PYTHON_SCRIPT in *.py; do
    ln -s ${CURRENT_PATH}/${PYTHON_SCRIPT} ${IPYTHON_CONFIG_PATH}
done
