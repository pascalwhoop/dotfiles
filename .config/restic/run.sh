#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd "$DIR"

source .env
sudo -E restic backup --one-file-system --exclude-file=./excludes.txt $@
