DATA_FOLDER=/home/pascalwhoop/Documents/Resilio-Sync/
WEBUI_PORT="8889"

mkdir -p $DATA_FOLDER

docker run -d --name resilio --user "1000:1000" \
	-p 127.0.0.1:$WEBUI_PORT:8888 -p 55555 \
        -v $DATA_FOLDER:/mnt/sync \
        --restart always \
        resilio/sync
