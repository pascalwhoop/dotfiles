#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd "$DIR"

sudo -E restic -vr backup sftp:pi:/mnt/vault/Backup/mbp --one-file-system --exclude-file=./excludes.txt $@
