#!/bin/bash
# This script trims the number of snapshots we keep to
# 1x year of last 3 years
# 1x month of last 6 months
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd "$DIR/../$HOSTNAME"

source .env
restic forget -y 3 -m 6 --prune --host $(hostname) $@
