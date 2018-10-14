docker create \
	--name=syncthing \
	-v /home/pascalwhoop/Documents/Syncthing:/config \
	-e PGID=1000 -e PUID=1000  \
	--restart always \
    --net host \
	linuxserver/syncthing
