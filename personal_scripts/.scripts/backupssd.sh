#!/bin/bash

#This bakes up the laptop to the attached SSD disk
#sudo mkdir -p /run/media/pascalwhoop/5821102c-0831-4cb9-ba41-46b359300432
#sudo mount /dev/disk/by-uuid/5821102c-0831-4cb9-ba41-46b359300432 /run/media/pascalwhoop/5821102c-0831-4cb9-ba41-46b359300432
hostname=`hostname`
sudo rsync --force --delete -vaxHAX --info=progress2 --filter="merge /home/pascalwhoop/.config/rsync/backup_inc_exc.txt" $1 / "/run/media/pascalwhoop/Backup/$hostname/"
