#!/bin/bash
set -xe

echo 'this script is something I use to bootstrap a new machine no matter where I work'

# install core requirements
sudo apt install -y tmux htop bmon fzf wget curl stow ranger

# get brew working
# ----------------
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /home/$USER/.profile
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/$USER/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
brew analytics off

# get dotfiles mounted
git clone https://github.com/pascalwhoop/dotfiles
cd dotfiles
# stow all the things
cat linux.stows | xargs -I {} stow -t ~ {}



# fish shell
brew install fish fzf bottom tldr exa dust duf fd jq dog gh terraform kubectl k9s tig
# oh my fish
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

#python dependencies
#pip install transformers accelerate tensorboard bitsandbytes