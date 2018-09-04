source ~/.scripts/bash/ENV_VARS.sh
#customize bash prompt
# ANSI color codes
RS="\[\033[0m\]"    # reset
HC="\[\033[1m\]"    # hicolor
UL="\[\033[4m\]"    # underline
INV="\[\033[7m\]"   # inverse background and foreground
FBLK="\[\033[30m\]" # foreground black
FRED="\[\033[31m\]" # foreground red
FGRN="\[\033[32m\]" # foreground green
FYEL="\[\033[33m\]" # foreground yellow
FBLE="\[\033[34m\]" # foreground blue
FMAG="\[\033[35m\]" # foreground magenta
FCYN="\[\033[36m\]" # foreground cyan
FWHT="\[\033[37m\]" # foreground white
BBLK="\[\033[40m\]" # background black
BRED="\[\033[41m\]" # background red
BGRN="\[\033[42m\]" # background green
BYEL="\[\033[43m\]" # background yellow
BBLE="\[\033[44m\]" # background blue
BMAG="\[\033[45m\]" # background magenta
BCYN="\[\033[46m\]" # background cyan
BWHT="\[\033[47m\]" # background white

NICK=XPS
export PS1="$HC$FGRN[\u@$NICK]$FRED \W \\$ $RS"

#disable Ctrl-S for freezing the shell
stty -ixon

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

#making python 3 default
#alias python2=/usr/bin/python
#alias python=python3

#PIP INSTALLED PACKAGES
export PATH=home/pascalwhoop/.local/bin:$PATH

#Ruby packages
export PATH="$PATH:/home/pascalwhoop/.gem/ruby/2.5.0/bin"

function cd() {
            builtin cd "$@" && ls
}
ls

# Avoid duplicates
export HISTCONTROL=ignoredups:erasedups  
# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend

# After each command, append to the history file and reread it
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

#add all linux specific files
LINUX_FILES=~/.scripts/bash/linux/*
for f in $LINUX_FILES
do
  # take action on each file. $f store current file name
  source $f
done

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/pascalwhoop/Apps/google-cloud-sdk/path.bash.inc' ]; then source '/home/pascalwhoop/Apps/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/pascalwhoop/Apps/google-cloud-sdk/completion.bash.inc' ]; then source '/home/pascalwhoop/Apps/google-cloud-sdk/completion.bash.inc'; fi


