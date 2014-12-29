#!/bin/bash -xe

CURRENT_PATH=$(dirname $(readlink -e $0))
HOME_DIR=${HOME}

ln -s ${CURRENT_PATH}/screenrc ~/.screenrc
