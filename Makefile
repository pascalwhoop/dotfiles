SUBFOLDERS := $(wildcard */)

# ensures all make targets run in one shell (rather than line by line in new shell)
.ONESHELL: 

default: bootstrap brew_base stow fish
	echo "Done installing"
stow:
	@for folder in $(SUBFOLDERS); do \
		stow -v -d . -t ~ $$folder; \
	done
	@echo "Stowing complete!"

# Apply Brewfile
brew:
	brew update
	brew bundle install

bootstrap:
	# install brew
	/bin/bash -c "CI=1 $$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	echo >> /home/$$USER/.bashrc
	echo 'eval "$$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/$$USER/.bashrc
	eval "$$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

fish:
	curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

brew_base:
	brew bundle install --file Brewfile.base

brew_extra:
	brew bundle install --file Brewfile.extra

brew_casks:
	brew bundle install --file Brewfile.casks

brew_macos: brew_base brew_extra brew_casks
	brew bundle install --file Brewfile.macos