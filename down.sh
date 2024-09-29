#!/usr/bin/env bash

set -Ceu

docker container stop pose

UNAME="$(uname)"

if [ "${UNAME}" = 'Darwin' ]; then
  xhost -
fi
