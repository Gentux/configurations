#!/bin/bash -xe

CURRENT_PATH=$(dirname $(readlink -e $0))
HOME_DIR=${HOME}
TERMINATOR_CONFIG_DIR="~/.config/terminator/"

[ -d ${TERMINATOR_CONFIG_DIR} ] || mkdir ${TERMINATOR_CONFIG_DIR}
ln -s ${CURRENT_PATH}/config ${TERMINATOR_CONFIG_DIR}/config
