# start sway on login
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  export WLR_NO_HARDWARE_CURSORS=1
  XKB_DEFAULT_LAYOUT=us exec sway
fi

export MOZ_ENABLE_WAYLAND=1
export CM_DIR="/home/pascalwhoop/.config/clipmenu"
export DYNAMIC_COLORS_ROOT="/home/pascalwhoop/.config/dynamic-colors/"
export EDITOR=/usr/bin/vim
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk"
export XDG_CONFIG_HOME="/home/pascalwhoop/.config"
export XDG_DATA_HOME="/home/pascalwhoop/.local/share"

#adding ruby gems
export PATH="/home/pascalwhoop/.gem/ruby/2.5.0/bin:$PATH"

#adding confluent bins
export PATH="/home/pascalwhoop/Apps/confluent/confluent-5.2.2/bin:$PATH"

#adding home brewed binaries and scripts
export PATH="/home/pascalwhoop/.scripts/bin:$PATH"
#export QT_SCALE_FACTOR=1
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export QT_QPA_PLATFORMTHEME="qt5ct"
export TERM="xterm-256color"
#export GDK_SCALE=2

export GOPATH=/home/pascalwhoop/.go/
export PATH=$GOPATH/bin:$PATH

#my own ENV vars
export NOTES="/home/pascalwhoop/Documents/Notebooks"

#export NVM_VERSIONS_PATH=$HOME/.nvm/versions/node
#export NPM_PATH=$NVM_VERSIONS_PATH/v$(cat /home/pascalwhoop/.nvm/alias/default)/bin
#export PATH=$NPM_PATH:$PATH
