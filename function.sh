#!/bin/bash


function create_or_replace_symlink() {
    ORIGINAL_FULL_NAME=$(readlink -f ${2})
    if [ ! -f ${ORIGINAL_FULL_NAME} ]; then
        ln -s ${1} ${2}
    elif [ -n "$(diff --brief ${ORIGINAL_FULL_NAME} ${1})" ]; then
        echo "File ${2} exists and differ from ${1}, what should I do ?"
    else
        ln -sf ${1} ${2}
    fi
}
