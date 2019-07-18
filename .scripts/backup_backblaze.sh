#!/bin/bash
set -xe
notify-send -a "Duply" "Backing up to backblaze"
#set NOPASSWD:SETENV permission in visudo
sudo -E /usr/bin/duply backblaze backup
notify-send -a "Duply" "Backup complete"

