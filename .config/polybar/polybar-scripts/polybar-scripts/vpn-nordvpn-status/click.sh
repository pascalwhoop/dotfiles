#!/bin/bash
connection=$(nordvpn status | grep "Disconnected")
echo "$connection"
if [ -z "$connection" ]
then
    nordvpn d
else
    nordvpn c
fi
