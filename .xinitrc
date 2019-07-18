#applying key maps
xmodmap ~/.Xmodmap
# This script is called by i3 on startup.
killall xcape | true #ignors errors
# Map the caps lock key to super...
setxkbmap -layout "us,de" -variant "," -option ctrl:nocaps
#allow toggling
setxkbmap -option 'grp:alt_shift_toggle'
# If you don't want a us international keyboard, rather whatever keyboard
# you set in your installation, comment out the above line and uncomment
# the one below.
#setxkbmap -option caps:super

# But when it is pressed only once, treat it as escape.
xcape -e 'Control_L=Escape'
