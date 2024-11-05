# Define the stow target
stow:
	cat unix.stows | xargs -I {} stow -t ~ {}
brew:
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

default: brew stow
