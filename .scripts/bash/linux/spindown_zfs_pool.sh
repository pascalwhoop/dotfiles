#!/bin/bash
function silence(){
	echo "spinning down hard drives of zfs pool"
	sudo hdparm -Y /dev/sda
	sudo hdparm -Y /dev/sdb
	sudo hdparm -Y /dev/sdc
	sudo hdparm -Y /dev/sdd
	sudo hdparm -Y /dev/sde
	sudo hdparm -Y /dev/sdg
	sudo hdparm -Y /dev/sdf
	docker container stop plex lidarr jackett sonarr radarr
#	sudo service resilio-sync stop
#	sudo service plexmediaserver stop
#	pkill albert
}

function issilence(){
	sudo hdparm -C /dev/sda
	sudo hdparm -C /dev/sdb
	sudo hdparm -C /dev/sdc
	sudo hdparm -C /dev/sdd
	sudo hdparm -C /dev/sde
	sudo hdparm -C /dev/sdg #external
      }

function alwayssilence(){
	#setting their Advanced Power Management Features, see man sudo hdparm for details
	sudo hdparm -B 150 /dev/sda
	sudo hdparm -B 150 /dev/sdb
	sudo hdparm -B 150 /dev/sdc
	sudo hdparm -B 150 /dev/sdd
	sudo hdparm -B 150 /dev/sde
	#setting their sleep timeout to 120 and put to sleep right away
	sudo hdparm -S 240 /dev/sda
	sudo hdparm -S 240 /dev/sdb
	sudo hdparm -S 240 /dev/sdc
	sudo hdparm -S 240 /dev/sdd
	sudo hdparm -S 240 /dev/sde
}

function keepsilence(){
	while true; do
		d=`date`
		echo "keeping silence at $d"
		silence;
		sleep 120;
	done
}
