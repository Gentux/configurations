#!/bin/bash -xe

CURRENT_PATH=$(dirname $(readlink -e $0))
HOME_DIR=${HOME}

sudo pip install slugify

ln -s ${CURRENT_PATH}/bashrc ~/.bashrc
ln -s ${CURRENT_PATH}/bash_aliases ~/.bash_aliases
ln -s ${CURRENT_PATH}/dircolors ~/.dircolors
