#!/bin/bash -xe

CURRENT_PATH=$(dirname $(readlink -e $0))

ln -s ${CURRENT_PATH}/screenrc ~/.screenrc
