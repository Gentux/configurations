#!/bin/bash


VIMDIR=$(realpath ~/.vim/)
VIM_CONFIG_DIR=$(dirname $(realpath ${0}))
VUNDLE_REPOS_URL="https://github.com/gmarik/Vundle.vim.git"

source ${VIM_CONFIG_DIR}/../function.sh

[ -d ${VIMDIR} ] || mkdir ${VIMDIR}
[ -d ${VIMDIR}/ftplugin ] || mkdir ${VIMDIR}/ftplugin

git clone ${VUNDLE_REPOS_URL} ${VIMDIR}/bundle/Vundle.vim

create_or_replace_symlink ${VIM_CONFIG_DIR}/vimrc   ~/.vimrc
create_or_replace_symlink ${VIM_CONFIG_DIR}/gvimrc  ~/.gvimrc
for FTPLUGIN in $(ls ${VIM_CONFIG_DIR}/ftplugin/*.vim); do
    create_or_replace_symlink ${FTPLUGIN} ${VIMDIR}/ftplugin/$(basename ${FTPLUGIN})
done

vim +PluginInstall +qall
