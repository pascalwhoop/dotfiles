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

bootstrap:
	# install brew
	/bin/bash -c "CI=1 $$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo >> /home/$$USER/.bashrc
    echo 'eval "$$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/$$USER/.bashrc
    eval "$$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
default: bootstrap stow
	echo "nothing yet"
