#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd "$DIR/../$HOSTNAME"

source .env
restic backup --one-file-system --exclude-file=./excludes.txt /
chown pascalwhoop:pascalwhoop -R /mnt/vault/Backup/restic
