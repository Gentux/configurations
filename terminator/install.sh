#!/bin/bash

CURRENT_PATH=$(dirname $(readlink -e $0))
TERMINATOR_CONFIG_DIR="${HOME}/.config/terminator"

source ${CURRENT_PATH}/../function.sh

[ -d ${TERMINATOR_CONFIG_DIR} ] || mkdir ${TERMINATOR_CONFIG_DIR}
create_or_replace_symlink ${CURRENT_PATH}/config ${TERMINATOR_CONFIG_DIR}/config
