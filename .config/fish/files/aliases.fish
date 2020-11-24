###############################
#alias and shortcuts
###############################

#ssh connections
###############################
alias gopi     'ssh pi@192.168.1.202'
alias godadpi  'ssh pi@25.66.128.19'
alias ranger='ranger --choosedir=/tmp/rangerdir ;and cd (cat /tmp/rangerdir)'

#note taking and todo list tricks
###############################
alias isodate    "date +%Y-%m-%d"
#alias remcomm    "echo \"!!\" >> ~/Documents/Syncthing/Notes/daily/`notedate`.md"
#aliases for VPN connections
alias rubber     "openpyn -f --tcp"
alias leech      "openpyn -f NL"


alias makesmartpl "~/.config/mpd/generate_playlists.sh"
#alias getss "xfce4-screenshooter -r -s ~/Desktop"


#short hands for long cli tools
###############################

alias ll 'ls -laGh'

#Display bright / dark theme
###############################
alias dark '~/.scripts/colors.sh dark'
alias light '~/.scripts/colors.sh light'

# development tools
###############################
alias rmswp 'find ./ -name "*.swp" -exec rm {} \;'

#yaourt shortcuts
alias y yaourt
alias pacmanclean "sudo pacman -Rsn (pacman -Qqdt)"
