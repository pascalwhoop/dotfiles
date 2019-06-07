#!/bin/bash
notify-send -a "Duply" "Backing up to backblaze"
sleep 3
sudo /usr/bin/duply backblaze backup
notify-send -a "Duply" "Backup complete"

