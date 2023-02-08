#!/bin/bash
# check for root
#!/bin/bash
#if ! [ $(id -u) = 0 ]; then
#   echo "Run as root!"
#   exit 1
#fi

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd "$DIR"

source ~/.config/restic_key/CloudStorage/.env
restic backup --one-file-system --exclude-file=./excludes.txt /Users/pascal_brokmeier/
