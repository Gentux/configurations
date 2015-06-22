#!/bin/bash


CONFIGURATION_REPO_DIR=$(dirname $(readlink -e $0))

for DIR in $(ls ${CONFIGURATION_REPO_DIR}); do
    [ -d $DIR ] || continue;
    [ -x ${DIR}/install.sh ] || continue;

    ${DIR}/install.sh
done
