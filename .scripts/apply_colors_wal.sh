#/bin/bash

#this script serves the application of several colors when using wal
#I don't use it anymore though, I played around enough with colors
COLOR=$1
echo $COLOR
sed -i "s/set background.*/set background=$COLOR/g" ~/.vimrc
#copy current colors into Xdefaults
cp ~/.cache/wal/colors.Xresources ~/.Xdefaults
#keep urxvt highlights aligned to solarized
cat ~/.config/urxvt/colors.Xresources >> ~/.Xdefaults
cat ~/.cache/wal/colors-rofi-dark.rasi > ~/.config/rofi/mytheme.rasi


#read any new values from XResources
xrdb ~/.Xresources
xrdb -merge ~/.Xdefaults
i3 restart

#kill notification manager and restart
killall dunst && dunst &

#applying new conky colors
python3 ~/.config/conky/pascalwhoop/pywal_conky.py
