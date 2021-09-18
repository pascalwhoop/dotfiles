#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd "$DIR"

export RESTIC_PASSWORD="$(pass show general/restic_repository)"
export RESTIC_REPOSITORY="sftp:pi:/mnt/vault/Backup/restic"
set -xe
sudo -E restic backup --one-file-system --exclude-file=./excludes.txt $@
