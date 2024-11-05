# List all subfolders
SUBFOLDERS := $(wildcard */)

# Define the stow target
stow:
	@for folder in $(SUBFOLDERS); do \
		stow -v -d . -t ~ $$folder; \
	done
	@echo "Stowing complete!"

# Apply Brewfile
brew:
	brew update
	brew bundle install