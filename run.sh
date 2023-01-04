#!/usr/bin/env bash

set -Ceu

xhost +

docker container run --rm \
--platform='linux/i386' \
-e 'DISPLAY=host.docker.internal:0' \
-v "$(pwd)/_rom:/_rom" \
--name pose \
pose:latest &
