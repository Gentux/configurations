#!/bin/bash

CURRENT_PATH=$(dirname $(realpath $0))

source ${CURRENT_PATH}/../function.sh

create_or_replace_symlink ${CURRENT_PATH}/gitconfig ~/.gitconfig
