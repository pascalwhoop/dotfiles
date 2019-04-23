function lodpi
    # firefox
    sed -i 's/  "1.25"/  "1.0"/' ~/.mozilla/firefox/4j3t9lg8.default/user.js

    #xrdb
    sed -i "s/Xft\.dpi.*/Xft\.dpi:96/" ~/.Xresources
    sed -i "s/polybar.height.*/polybar\.height:30/" ~/.Xresources
    xrdb -merge ~/.Xresources
    #restart gui tools
    pkill -f dunst
    i3 restart
end

