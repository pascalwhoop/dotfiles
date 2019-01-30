#CUDA environment variables
#setting display env variable for tmux
set -x CM_DIR "/home/pascalwhoop/.config/clipmenu"
set -x DISPLAY ":0"
set -x DYNAMIC_COLORS_ROOT "/home/pascalwhoop/.config/dynamic-colors/"
set -x EDITOR /usr/bin/vim
set -x JAVA_HOME "/usr/lib/jvm/java-10-openjdk"
set -x QT_SCALE_FACTOR 1
set -x XDG_CONFIG_HOME "/home/pascalwhoop/.config"
set -x XDG_DATA_HOME "/home/pascalwhoop/.local/share"
set -x PATH $PATH "/home/pascalwhoop/.gem/ruby/2.5.0/bin"

#my own ENV vars
set -x NOTES "/home/pascalwhoop/Documents/Syncthing/Default Folder/Notebooks"

# omf bobthefish settings
set -g theme_nerd_fonts yes
set -g theme_newline_cursor yes
set -g theme_color_scheme solarized
set -g VIRTUAL_ENV_DISABLE_PROMPT 1
