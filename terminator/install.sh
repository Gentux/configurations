#!/bin/bash -xe

CURRENT_PATH=$(dirname $(readlink -e $0))
HOME_DIR=${HOME}
TERMINATOR_CONFIG_DIR="~/.config/terminator/"

ln -s ${CURRENT_PATH}/config ${TERMINATOR_CONFIG_DIR}/config
