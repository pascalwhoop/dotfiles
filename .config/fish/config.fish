#!/usr/bin/fish

#sourcing functions / aliases / ...
for file in (ls ~/.config/fish/files)
    source ~/.config/fish/files/$file
end

#quickjump activation
. /usr/share/autojump/autojump.fish
set j autojump

#disable Ctrl-S for freezing the shell
#stty -ixon
