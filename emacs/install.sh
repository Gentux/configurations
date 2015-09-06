#!/bin/bash +x


EMACSDIR=$(readlink -e ~/.emacs.d/)
EMACS_CONFIG_DIR=$(dirname $(readlink -e ${0}))

source ${EMACS_CONFIG_DIR}/../function.sh

[ -d ${EMACDIR} ] || mkdir ${EMACDIR}

create_or_replace_symlink ${EMACS_CONFIG_DIR}/emacs.d  ~/.emacs.d
