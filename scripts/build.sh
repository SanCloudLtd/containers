#! /bin/bash
# Copyright (C) 2021 SanCloud Ltd
# SPDX-License-Identifier: Apache-2.0

set -euo pipefail

if [[ -z "$1" ]]; then
    echo "Usage: $0 IMAGENAME"
    exit 1
fi

if [[ ! -d "$1" ]]; then
    echo "Invalid image name: $1"
    exit 1
fi

cd $1
if [[ -e pull ]]; then
    while read img; do
        podman pull $img
    done < pull
fi
podman build -t ghcr.io/sancloudltd/$1:dev .
