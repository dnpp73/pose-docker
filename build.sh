#!/usr/bin/env bash

set -Ceu

CURRENT_DIR=$(cd "$(dirname "${0}")" || exit 1; pwd)

docker image build \
--platform='linux/i386' \
-t pose:latest \
"${CURRENT_DIR}"
