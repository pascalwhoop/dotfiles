#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd "$DIR"

source ~/.config/restic_key/CloudStorage/.env
restic forget --prune --host $(hostname) $@
