#!/bin/bash

CURRENT_PATH=$(dirname $(realpath $0))

source ${CURRENT_PATH}/../function.sh

create_or_replace_symlink ${CURRENT_PATH}/bashrc ~/.bashrc
create_or_replace_symlink ${CURRENT_PATH}/bash_aliases ~/.bash_aliases
create_or_replace_symlink ${CURRENT_PATH}/dircolors ~/.dircolors
