#!/bin/bash
notify-send "Backing up to backblaze"
sudo duply backblaze backup
notify-send "Backup complete"

