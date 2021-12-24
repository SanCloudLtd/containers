#! /bin/bash
# Copyright (C) 2021 SanCloud Ltd
# SPDX-License-Identifier: Apache-2.0

set -eo pipefail

if [[ -z "$NOPULL" ]]; then
    podman pull docker.io/library/ubuntu:20.04
fi
