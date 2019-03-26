#!/usr/bin/fish

bass source ~/.config/locale.conf

#sourcing functions / aliases / ...
for file in (command ls ~/.config/fish/files)
    source ~/.config/fish/files/$file
end

#quickjump activation
. /usr/share/autojump/autojump.fish

#disable Ctrl-S for freezing the shell
#stty -ixon

#virtualfish tooling
eval (python -m virtualfish auto_activation)

#enable fzf
#https://wiki.archlinux.org/index.php/Fzf#fish
fzf_key_bindings

