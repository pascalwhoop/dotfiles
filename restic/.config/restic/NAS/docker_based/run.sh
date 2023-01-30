#!/bin/bash
set -xe

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd "$DIR"

source .env
ln -s /host/.ssh /root/.ssh
restic backup --one-file-system --exclude-file=./excludes.txt /host
