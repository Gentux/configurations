#!/bin/bash -xe


VIMDIR=$(realpath ~/.vim/)
VIM_CONFIG_DIR=$(dirname $(readlink -e ${0}))

[ -d ${VIMDIR} ] || mkdir ${VIMDIR}
[ -d ${VIMDIR}/ftplugin ] || mkdir ${VIMDIR}/ftplugin

ln -s ${VIM_CONFIG_DIR}/vimrc   ~/.vimrc
ln -s ${VIM_CONFIG_DIR}/gvimrc  ~/.gvimrc
ln -s ${VIM_CONFIG_DIR}/ftplugin/dot.vim            ${VIMDIR}/ftplugin/
ln -s ${VIM_CONFIG_DIR}/ftplugin/html.vim           ${VIMDIR}/ftplugin/
ln -s ${VIM_CONFIG_DIR}/ftplugin/javascript.vim     ${VIMDIR}/ftplugin/
ln -s ${VIM_CONFIG_DIR}/ftplugin/python.vim         ${VIMDIR}/ftplugin/
