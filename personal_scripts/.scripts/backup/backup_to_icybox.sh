#!/bin/bash
set -xe

SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
HOSTNAME=`hostname`
sudo rsync --force --delete -axHAX --info=progress2 --filter="merge $SCRIPTPATH/backup_include_exclude.txt" $1 / "/mnt/vault/Backup/$HOSTNAME/"

date > /mnt/vault/Backup/$HOSTNAME/datestamp

