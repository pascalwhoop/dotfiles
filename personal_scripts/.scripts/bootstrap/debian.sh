#!/bin/bash
set -xe

echo 'this script is something I use to bootstrap a new machine no matter where I work'

# install core requirements
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /home/$USER/.profile
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/$USER/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
brew analytics off
sudo apt install -y tmux htop bmon fzf wget curl

# get brew working
# ----------------
git clone https://github.com/pascalwhoop/dotfiles
cd dotfiles
# stow all the things
cat server.stows | xargs -I {} stow -t ~ {}



# fish shell
brew install fish fzf bottom tldr exa dust duf fd jq dog
# oh my fish
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

#python dependencies
#pip install transformers accelerate tensorboard bitsandbytes