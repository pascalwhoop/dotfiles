docker stop dropbox
docker rm dropbox
docker run -d --restart=always --name=dropbox \
    -e DBOX_UID=1000 \
    -e DBOX_GID=1000 \
    -v /home/pascalwhoop/Documents/Dropbox:/dbox/Dropbox \
    janeczku/dropbox
