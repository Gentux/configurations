#!/bin/bash -xe


VIMDIR=$(readlink -e ~/.vim/)
VIM_CONFIG_DIR=$(dirname $(readlink -e ${0}))

source ${VIM_CONFIG_DIR}/../function.sh

[ -d ${VIMDIR} ] || mkdir ${VIMDIR}
[ -d ${VIMDIR}/ftplugin ] || mkdir ${VIMDIR}/ftplugin

create_or_replace_symlink ${VIM_CONFIG_DIR}/vimrc   ~/.vimrc
create_or_replace_symlink ${VIM_CONFIG_DIR}/gvimrc  ~/.gvimrc
for FTPLUGIN in $(ls ${VIM_CONFIG_DIR}/ftplugin/*.vim); do
    create_or_replace_symlink ${FTPLUGIN} ${VIMDIR}/ftplugin/$(basename ${FTPLUGIN})
done
