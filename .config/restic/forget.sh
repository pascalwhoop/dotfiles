#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd "$DIR"

source .env
sudo -E restic forget --keep-last 3 --prune --host BRU-203786-C02ZR0Y1MD6W $@
