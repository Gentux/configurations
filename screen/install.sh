#!/bin/bash

CURRENT_PATH=$(dirname $(readlink -e $0))

source ${CURRENT_PATH}/../function.sh

create_or_replace_symlink ${CURRENT_PATH}/screenrc ~/.screenrc
