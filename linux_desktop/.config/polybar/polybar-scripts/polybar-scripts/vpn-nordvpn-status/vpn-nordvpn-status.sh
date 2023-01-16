#!/bin/sh

STATUS=$(nordvpn status | grep Status | tr -d ' ' | cut -d ':' -f2)

if [ "$STATUS" = "Connected" ]; then
    echo "%{F#00ff00} $(nordvpn status | grep IP | tr -d ' ' | cut -d ':' -f2)"
else
    echo "%{F#f00}"
fi
