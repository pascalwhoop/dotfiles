#!/bin/bash
set -e

# gets the directory of the script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
source $DIR/.env
cd $DIR


restic backup / \
    --one-file-system \
    --exclude-file $DIR/excludes.root.txt \
    --exclude-file $DIR/excludes.core.txt

#Enable this after I cleaned up the vault
restic backup /mnt/vault/ \
    --one-file-system \
    --exclude-file $DIR/excludes.vault.txt \
    --exclude-file $DIR/excludes.core.txt

# Clean up older backups
restic forget \
    --keep-daily 7 \
    --keep-weekly 4 \
    --keep-monthly 6 \
    --keep-yearly 3 \
    --prune \
    --max-unused=unlimited \
    --repack-cacheable-only=true
