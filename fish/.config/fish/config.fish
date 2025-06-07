#!/usr/bin/fish
[ -f /opt/homebrew/share/autojump/autojump.fish ]; and source /opt/homebrew/share/autojump/autojump.fish

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

# Set EDITOR
set -gx EDITOR /opt/homebrew/bin/vim

# Extend PATH
set -gx PATH $HOME/.scripts/bin $PATH
set -gx PATH $HOME/.scripts/macos $PATH
set -gx PATH /usr/local/opt/openjdk/bin $PATH
set -gx PATH $HOME/.rd/bin $PATH

# Terminal type
# set -gx TERM xterm-256color
# set -gx GDK_SCALE 2  # Uncomment if needed

# homebrew
set -gx HOMEBREW_NO_AUTO_UPDATE 1
eval (/opt/homebrew/bin/brew shellenv)

# Source cargo env
source "$HOME/.cargo/env.fish"

# fzf configurations
fzf_configure_bindings --directory=\ct --variables=\cv --git_status=\cs



# ---------------------------------------
# ------------ ABBREVIATIONS ------------
# ---------------------------------------

abbr -a -- bac_r2e 'bass source ~/.scripts/bin/role_to_env'
abbr -a -- t.apt 'terraform apply --target=module.'
abbr -a -- gs 'git status'
abbr -a -- gd 'git diff'
abbr -a -- pacmanstale 'find ./ | xargs pacman -Qo {} | grep "no package"'
abbr -a -- c clear
abbr -a -- t terraform
abbr -a -- gac 'git add ./ ;and git commit'
abbr -a -- g git
abbr -a -- x exit
abbr -a -- d docker
abbr -a -- gl 'git log'
abbr -a -- gcnb 'git checkout -b '
abbr -a -- k kubectl
abbr -a -- activate 'source ./venv/bin/activate.fish'
abbr -a -- N nerdctl
abbr -a -- G gcloud
abbr -a -- girm 'git rebase -i origin/master'
abbr -a -- a aws
abbr -a -- aws-azure-login '~/.nvm/versions/node/v6.11.1/bin/aws-azure-login'
abbr -a -- ga 'git add'
abbr -a -- gp 'git push'
abbr -a -- gca 'git commit --amend'
abbr -a -- bac-login '~/.nvm/versions/node/v6.11.1/bin/aws-azure-login --no-sandbox'
abbr -a -- gcp 'git cherry-pick'
abbr -a -- gird 'git rebase -i origin/develop'
abbr -a -- gitcm git\ commit\ -m\ \'
abbr -a -- gitgo 'git add ./ ;and git commit ;and git push'
abbr -a -- gitbump 'git add ./ ;and git commit -m \'bump\' ;and git push'
abbr -a -- gitnb 'git checkout main ;and git pull ;and git checkout -b'
abbr -a -- pud 'pushd ./'
abbr -a -- gitpbb 'git stash ;and git pull --rebase ;and git stash pop'
abbr -a -- gitpnb 'git push -u origin HEAD'
abbr -a -- gitroot 'cd (git rev-parse --show-toplevel)'
abbr -a -- hi history
abbr -a -- gitsqueeze 'git add ./ ;and git commit --amend'
abbr -a -- gc 'git commit'
abbr -a -- r ranger
abbr -a -- gpfwl 'git push --force-with-lease'
abbr -a -- hili 'highlight --out-format=xterm256 --syntax='
abbr -a -- jcb jira_close_biontech
abbr -a -- n notes
abbr -a -- nvpn nordvpn
abbr -a -- conduktor 'java -jar ~/Apps/conduktor/Conduktor.jar'
abbr -a -- remove 'sudo pacman -Rcnsu'
abbr -a -- sd say\ \'x\'
abbr -a -- v vim
abbr -a -- y yaourt
abbr -a -- otf 'oks terraform' 
abbr -a -- tgi 'terragrunt init' 
abbr -a -- tga 'terragrunt apply' 
abbr -a -- tgp 'terragrunt plan' 
abbr -a -- otg 'oks terragrunt' 
abbr -a -- dlset 'yt-dlp -x --audio-format mp3' 
abbr -a -- ghisc 'gh issue create -t'
abbr -a -- st 'source ./.venv/bin/activate.fish'
abbr -a -- dive 'docker run --rm -it -v /var/run/docker.sock:/var/run/docker.sock wagoodman/dive:latest '
