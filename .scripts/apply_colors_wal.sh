#/bin/bash
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
