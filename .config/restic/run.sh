#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd "$DIR"

sudo -E restic -r sftp:pi@192.168.1.99:/mnt/vault/Backup/mbp backup / --exclude-file=./excludes.txt $@
