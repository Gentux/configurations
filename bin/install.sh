#!/bin/bash -xe

CURRENT_PATH=$(dirname $(readlink -e $0))
BIN_PATH=$(realpath ~/bin/)

[ -d ${BIN_PATH} ] || mkdir -p ${BIN_PATH}

for FILE_SCRIPT in ${CURRENT_PATH}/scripts/*; do
    cp ${FILE_SCRIPT} ${BIN_PATH}
done
