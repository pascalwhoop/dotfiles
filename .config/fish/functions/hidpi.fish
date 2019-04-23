function hidpi
    # first, setting which screens to use
    #xrandr --output eDP1 --off
    #xrandr --output DP1 --auto
    # manipulating xrdb
    sed -i "s/Xft.dpi.*/Xft\.dpi:115/" ~/.Xresources
    sed -i "s/polybar.height.*/polybar\.height:40/" ~/.Xresources
    xrdb -merge ~/.Xresources
    sed -i 's/  "1.0"/  "1.25"/' ~/.mozilla/firefox/4j3t9lg8.default/user.js
    sleep 2
    pkill -f dunst
    i3 restart
end

