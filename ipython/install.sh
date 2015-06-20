#!/bin/bash -xe

CURRENT_PATH=$(dirname $(readlink -e $0))
IPYTHON_CONFIG_PATH=$(realpath ~/.ipython/profile_default/startup/)

source ${CURRENT_PATH}/../function.sh

[ -d ${IPYTHON_CONFIG_PATH} ] || mkdir -p ${IPYTHON_CONFIG_PATH}

for PYTHON_SCRIPT in *.py; do
    create_or_replace_symlink ${CURRENT_PATH}/${PYTHON_SCRIPT} ${IPYTHON_CONFIG_PATH}
done
