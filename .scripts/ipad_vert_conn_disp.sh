#!/bin/bash
xrandr --newmode "ipadvirtual"   54.75  1024 1072 1168 1312  1368 1371 1381 1395 +vsync
xrandr --addmode VIRTUAL1 ipadvirtual
xrandr --output VIRTUAL1 --right-of eDP1 --mode ipadvirtual
x11vnc -clip 1024x1368+1920+0 -multiptr -passwd "myxps2016dp"
xrandr --output VIRTUAL1 --off
xrandr --delmode VIRTUAL1 ipadvirtual
xrandr --rmmode ipadvirtual
