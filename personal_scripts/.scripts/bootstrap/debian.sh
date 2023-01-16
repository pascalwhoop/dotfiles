#!/bin/bash

echo 'this script is something I use to bootstrap a new machine no matter where I work'

# install core requirements
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
sudo apt install -y tmux htop bmon fzf wget curl

# get brew working
curl https://gist.githubusercontent.com/pascalwhoop/4d01bb179132118c565b3db56c4ce68e/raw/fa0ab508cac760efaa399442047256a36578c62e/tmux.conf > ~/.tmux.conf

# fish shell
brew install fish fzf bottom tldr exa dust duf fd jq dog
# oh my fish
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

#python dependencies
#pip install transformers accelerate tensorboard bitsandbytes