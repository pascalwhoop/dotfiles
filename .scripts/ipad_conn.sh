#!/bin/bash
xrandr --newmode "ipadvirtual"   53.25  1368 1408 1536 1704  1024 1027 1037 1045 +vsync
xrandr --addmode VIRTUAL1 ipadvirtual
xrandr --output VIRTUAL1 --right-of eDP1 --mode ipadvirtual
x11vnc -clip 1368x1024+1920+0 -multiptr -passwd "myxps2016dp"
xrandr --output VIRTUAL1 --off
xrandr --delmode VIRTUAL1 ipadvirtual
xrandr --rmmode ipadvirtual
