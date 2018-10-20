###############################
#alias and shortcuts
###############################

#ssh connections
###############################
alias gopi     'ssh pi@192.168.1.101'
alias godad    'ssh pascalwhoop@25.33.211.37'
alias godadpi  'ssh pi@25.66.128.19'

#note taking and todo list tricks
###############################
alias notedate   "date +%Y-%m-%d-%A"
alias isodate    "date +%Y-%m-%d"
alias t          "todo.sh"
alias vt         "cd ~/Documents/Syncthing/Notebooks ;and vim ./todo.txt"
alias o          "cd ~/Documents/Syncthing/Notebooks ;and vim ./"
alias n          "cd ~/Documents/Syncthing/Notebooks/daily ;and vim ./`notedate`.md"
alias d          "cd ~/Documents/Syncthing/Notebooks/diary ;and vim ./`notedate`.md"
alias remcomm    "echo \"!!\" >> ~/Documents/Syncthing/Notes/daily/`notedate`.md"
#aliases for VPN connections
alias rubber     "openpyn -f --tcp"
alias leech      "openpyn -f NL"


alias makesmartpl "~/.config/mpd/generate_playlists.sh"
#alias getss "xfce4-screenshooter -r -s ~/Desktop"

# cd to specific directories
###############################
alias cdnb "cd /home/pascalwhoop/Documents/Code/Jupyter/Notebooks"

alias cdtac "cd ~/Documents/Code/University/powerTAC"
alias cdcon "cd ~/Documents/Code/University/powerTAC/powertac-container-runtime"
alias cdai 'cd "/home/pascalwhoop/Documents/Code/University/masterthesis"'

alias cddot "cd ~/Documents/Code/dotfiles"
alias cdblog 'cd ~/Documents/Code/blog/pascalwhoop.github.io'
alias cdcode 'cd ~/Documents/Code'
alias cdweb 'cd ~/Documents/Code/website/pascalbrokmeier.de'
alias cdbash 'cd ~/dotfiles/bash'
alias cdall 'cd ~/Documents/Syncthing/Sync/_ALL'
alias shot 'import -silent "/tmp/(date +%Y-%m-%d-%T)-screenshot.png"'

#short hands for long cli tools
###############################
alias ls 'ls -al'
alias r 'ranger'
alias x 'exit'
alias v 'vim ./'

alias ll 'ls -laGh'
alias hi "history"
alias open "xdg-open"

#Display bright / dark theme
###############################
alias dark '~/.scripts/colors.sh dark'
alias light '~/.scripts/colors.sh light'

# development tools
###############################
alias clearvim "rm -r /home/pascalwhoop/.vim/sessions\`pwd\`"
alias rmswp 'find ./ -name "*.swp" -exec rm {} \;'
alias goagent "cd ~/Documents/Code/University/powerTAC/python-agent ;and activate"
#alias pushagent "rsync --exclude "venv/" --exclude ".git/" --exclude ".idea/" --exclude "**/__pycache__"  --exclude tensorboard --exclude data -av /home/pascalwhoop/Documents/Code/University/powerTAC/python-agent/ pascalwhoop@25.33.211.37:/home/pascalwhoop/Documents/Code/University/powerTAC/python-agent"

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
