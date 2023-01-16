#!/bin/bash

#This script switches colors of the Desktop between light and dark. It just sets the terminal though

COLOR=$1
GTK_PATH="/home/pascalwhoop/.config/gtk-3.0/settings.ini"

if [[ "$COLOR" == "light" ]] 
then
    THEME="Arc"
fi
if [[ "$COLOR" == "dark" ]] 
then
    THEME="Arc-Dark"
fi

#sets all current shells to the color
python /home/pascalwhoop/.scripts/urxvt-colors.py $COLOR 
#sets all new shells to the color I want
xrdb -merge ~/.config/dynamic-colors/xresources/Xresources.$COLOR
