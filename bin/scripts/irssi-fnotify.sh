#!/bin/bash


HOSTNAME=${1}
shift

FILENAME="~/.irssi/fnotify"
{ ssh ${HOSTNAME} "tail -F -n0 ${FILENAME}" | parallel notify-send }
