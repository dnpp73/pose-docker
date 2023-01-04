#!/usr/bin/env bash

set -Ceu

CURRENT_DIR=$(cd "$(dirname "${0}")" || exit 1; pwd)

xhost +

docker container run --rm \
--platform='linux/i386' \
-e 'DISPLAY=host.docker.internal:0' \
-v "${CURRENT_DIR}/_rom:/_rom" \
--name pose \
pose:latest &
