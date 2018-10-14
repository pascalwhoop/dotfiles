docker kill plex
docker rm plex
docker create --name=plex \
    --restart always \
    --network host \
    -e VERSION=latest \
    -e PUID=1000 \
    -e PGID=1000 \
    -e TZ=Europe/Berlin \
    -v /home/pascalwhoop/Videos/plexconfig:/config \
    -v /home/pascalwhoop/tank/Music:/data/music \
    -v /home/pascalwhoop/tank/Plex\ Media\ Library/TV\ Shows/:/data/tvshows \
    -v /home/pascalwhoop/tank/Plex\ Media\ Library/Movies/:/data/movies linuxserver/plex
docker start plex
