#!/usr/bin/fish

#sourcing functions / aliases / ...
for file in (command ls ~/.config/fish/files)
    source ~/.config/fish/files/$file
end

#quickjump activation
. /usr/local/Cellar/autojump/22.5.3_3/share/autojump/autojump.fish

#disable Ctrl-S for freezing the shell
#stty -ixon

#virtualfish tooling
#eval (python -m virtualfish auto_activation)

set -g -x "CLOUDSDK_PYTHON" "/usr/local/opt/python@3.8/libexec/bin/python"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc"

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

function fish_right_prompt
  #intentionally left blank
 end

