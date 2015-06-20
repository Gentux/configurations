#!/bin/bash -xe

CURRENT_PATH=$(dirname $(readlink -e $0))
HOME_DIR=${HOME}

source ${CURRENT_PATH}/../function.sh

create_or_replace_symlink ${CURRENT_PATH}/gitconfig ~/.gitconfig
