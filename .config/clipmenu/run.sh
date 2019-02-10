#!/bin/bash
#running through script to get env variables in here
export CM_DIR=/home/pascalwhoop/.config/clipmenu
clipmenu

#this relies on clipmenud running with the same CM_DIR in its configuration. Currently, I run this
#through having the following file at `/usr/lib/systemd/user/clipmenud.service`

## [Unit]
## Description=Clipmenu daemon
## 
## [Service]
## ExecStart=/usr/bin/clipmenud
## Restart=always
## RestartSec=0
## Environment=DISPLAY=:0
## Environment=CM_DIR=/home/pascalwhoop/.config/clipmenu
## 
## MemoryDenyWriteExecute=yes
## NoNewPrivileges=yes
## ProtectControlGroups=yes
## ProtectKernelTunables=yes
## RestrictAddressFamilies=
## RestrictRealtime=yes
## 
## [Install]
## WantedBy=default.target

