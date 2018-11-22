function screens
    if test $argv[1] = 'space'
        xrandr --output DP1-1 --auto --right-of eDP1
        xrandr --output DP1-2 --auto --right-of DP1-1 --rotate left
        # restart my window manager
        i3 restart
    end
    if test $argv[1] = 'off'
        xrandr --output DP1-1 --off
        xrandr --output DP1-2 --off
    end
end
