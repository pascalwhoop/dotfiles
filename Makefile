# Define the stow target
stow:
	cat unix.stows | xargs -I {} stow -t ~ {}
