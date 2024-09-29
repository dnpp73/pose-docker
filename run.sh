#!/usr/bin/env bash

set -Ceu

CURRENT_DIR=$(cd "$(dirname "${0}")" || exit 1; pwd)

UNAME="$(uname)"

if [ "${UNAME}" = 'Darwin' ]; then
  xhost +

  docker container run --rm \
    --platform='linux/i386' \
    -e 'DISPLAY=host.docker.internal:0' \
    -v "${CURRENT_DIR}/_rom:/_rom" \
    --name pose \
    pose:latest &
elif [ "${UNAME}" = 'Linux' ]; then
  docker container run --rm \
    --platform='linux/i386' \
    -e "DISPLAY=${DISPLAY}" \
    -v "${CURRENT_DIR}/_rom:/_rom" \
    -v "/tmp/.X11-unix:/tmp/.X11-unix" \
    --name pose \
    pose:latest &
fi
