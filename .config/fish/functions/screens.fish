function screens
    if test $argv[1] = 'space'
        xrandr --output DP1-1 --auto --right-of eDP1
        xrandr --output DP1-2 --auto --right-of DP1-1
        # restart my window manager
        i3 restart
    end
    if test $argv[1] = 'hhd'
        xrandr --output HDMI1 --auto --above eDP1 
    end
    if test $argv[1] = 'h4k'
        xrandr --output HDMI1 --mode 3840x2160 --above eDP1 --dpi 115
        xrandr --output eDP1 --off
        hidpi
    end
    if test $argv[1] = '4k'
        xrandr --output DP1 --auto --pos 0x0 --dpi 115  
        xrandr --output eDP1 --off
        hidpi
    end
    if test $argv[1] = 'mobile'
        xrandr --output eDP1 --auto
        xrandr --output DP1-1 --off
        xrandr --output DP1-2 --off
        xrandr --output HDMI1 --off
        xrandr --output DP1 --off
        lodpi
    end
end
