#!/usr/bin/fish

#sourcing functions / aliases / ...
source ~/.config/fish/files/*

#quickjump activation
. /usr/share/autojump/autojump.fish
set j autojump

#disable Ctrl-S for freezing the shell
#stty -ixon

#PIP INSTALLED PACKAGES
#set PATH "/home/pascalwhoop/.local/bin" $PATH

#Ruby packages
set PATH /home/pascalwhoop/.gem/ruby/2.5.0/bin $PATH

# Avoid duplicates
# set HISTCONTROL ignoredups:erasedups  
# When the shell exits, append to the history file instead of overwriting it
# shopt -s histappend
# After each command, append to the history file and reread it
# set PROMPT_COMMAND "${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

