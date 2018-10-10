#!/bin/bash

#helper script that connects my displays with the laptop for easy connections. use urandr to customize resolution and
#location
POSITION=$1
SCALE="$2x$2"
PORT=`xrandr | grep " connected" | grep -v eDP1 | grep -o "^\w*"`

#disconnects the screen if not connected anymore
xrandr --output $PORT --auto --scale $SCALE $POSITION eDP1
