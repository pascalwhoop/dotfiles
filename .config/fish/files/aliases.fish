###############################
#alias and shortcuts
###############################

#ssh connections
###############################
alias gopi     'ssh pi@192.168.1.101'
alias godadpi  'ssh pi@25.66.128.19'

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
alias open "xdg-open"

#Display bright / dark theme
###############################
alias dark '~/.scripts/colors.sh dark'
alias light '~/.scripts/colors.sh light'

# development tools
###############################
alias clearvim "rm -r /home/pascalwhoop/.vim/sessions\`pwd\`"
alias rmswp 'find ./ -name "*.swp" -exec rm {} \;'

#yaourt shortcuts
alias y yaourt
alias pacmanclean "sudo pacman -Rsn (pacman -Qqdt)"

# old / unused aliases
###############################
#alias jupystart "nvidia-docker start jupyter ;and docker exec -it jupyter bash -c \"jupyter notebook list\""
#alias editconky "vim ~/.config/conky/pascalwhoop/conky.conf"
#alias plexup "docker container start plex"
#alias plexdown "docker container stop plex"
#alias jnbup "docker container start tensorflow-notebook"
#alias kub "kubectl"
#alias goagent "cd ~/Documents/Code/University/powerTAC/python-agent ;and activate"
#alias pushagent "rsync --exclude "venv/" --exclude ".git/" --exclude ".idea/" --exclude "**/__pycache__"  --exclude tensorboard --exclude data -av /home/pascalwhoop/Documents/Code/University/powerTAC/python-agent/ pascalwhoop@25.33.211.37:/home/pascalwhoop/Documents/Code/University/powerTAC/python-agent"
