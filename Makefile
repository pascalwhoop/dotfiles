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
macos: brew_update brew_base brew_extra brew_casks


bootstrap:
	# install brew
	/bin/bash -c "CI=1 $$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	echo >> /home/$$USER/.bashrc
	echo 'eval "$$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/$$USER/.bashrc
	eval "$$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
	# installs hooks
	brew install uv
	uv sync
	uv run pre-commit install

.PHONY: fish
fish:
	curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

brew_update: 
	brew update
brew_base:
	brew bundle install --file Brewfile.base

brew_extra:
	brew bundle install --file Brewfile.extra

brew_casks:
	brew bundle install --file Brewfile.casks

brew_macos: brew_base brew_extra brew_casks
	brew bundle install --file Brewfile.macos
