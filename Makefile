SUBFOLDERS := $(wildcard */)

# ensures all make targets run in one shell (rather than line by line in new shell)
.ONESHELL: 

default: brew_install stow fish
	echo "Done installing"
stow:
	@for folder in $(SUBFOLDERS); do \
		stow -v -d . -t ~ $$folder; \
	done
	@echo "Stowing complete!"

# Apply Brewfile
macos: brew_update brew_install

pre-commit:
	uv run pre-commit install

.PHONY: fish
fish:
	curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

brew_update: 
	brew update

brew_check:
	brew bundle check --file Brewfile --verbose

brew_missing:
	brew bundle cleanup --file Brewfile
brew_install:
	brew bundle install --file Brewfile
