#setting display env variable for tmux
export EDITOR=/usr/local/bin/vim


#adding home brewed binaries and scripts
export PATH="$HOME/.scripts/bin:$PATH"
export PATH="$HOME/.scripts/macos:$PATH"
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export PATH="$HOME/.rd/bin:$PATH"
export TERM="xterm-256color"
#export GDK_SCALE=2

#make FZF even better
export FZF_DEFAULT_COMMAND='fd -H'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export HOMEBREW_NO_AUTO_UPDATE=1
