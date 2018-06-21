#/bin/bash
#copy current colors into dotfiles
cp ~/.cache/wal/colors.Xresources ~/dotfiles/.Xdefaults
#keep urxvt highlights aligned to solarized
cat ~/dotfiles/.config/urxvt/colors.Xresources >> ~/dotfiles/.Xdefaults

#bootstrap dotfiles
~/dotfiles/bootstrap.sh --force

#read any new values from XResources
xrdb ~/.Xresources
xrdb -merge ~/.Xdefaults
i3 restart

#kill notification manager and restart
killall dunst && dunst &

#applying new conky colors
python3 ~/.config/conky/pascalwhoop/pywal_conky.py

#kill polybar and give it a sec
killall polybar
sleep 1
polybar --reload pascalwhoop &

