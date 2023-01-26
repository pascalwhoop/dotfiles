#!/bin/bash

# Moves file to specified folder in dotfiles using its absolute file name, and stows it
# Requires: stow, rsync
# Usage: stow-to destination source

## Checks if the correct number of aruments were given
if [ ! $# -eq 2 ]; then
	echo -e "stow-to: wrong number of arguments\nUsage: 'stow-to destination source'"
	exit
fi

## Checks validity of argument 2
if [ ! -e $2 ]; then
	echo -e "stow-to: file '$2' doesn't exist in this directory or is not a regular file"
	exit
elif [ -L $2 ]; then
	echo -e "stow-to: file '$2' is a symbolic link"
	exit
fi

## Checks if folder to be created doesn't yet exist
## in order to prevent wrong naming
if [ ! -d  "$HOME/dotfiles/$1" ]; then
	while :; do
		echo -e "stow-to: folder '$1' not found in $HOME/dotfiles"
		read -p " Do you wish to create it? " yn
		case $yn in
			[Yy]* ) mkdir -p $HOME/dotfiles/$1
				echo "Folder $1 successfully created!"
				break;;
			[Nn]* ) exit;;
			* ) echo "Please answer yes or no.";;
		esac
	done
fi

## In this setup the target folder is /
## so realpath is used to get the full folder hierarchy of arg 2
filepath=$(realpath $2)

## Checks if argument 2 (folder or file) already exists
## in order to prevent accidntal overwriting
## rsync is used like mv, but can create folders
if [ -d $HOME/dotfiles/$1/$filepath ] || [ -f $HOME/dotfiles/$1/$filepath ]; then
	while :; do
		echo -e "stow-to: file '$HOME/dotfiles/$1$filepath' already exists"
		read -p "Would you like to overwrite it (a backup will be created)? " yn
		case $yn in
			[Yy]* ) rsync -abvR --no-links --remove-source-files $filepath $HOME/dotfiles/$1
				echo "File sucessfully overwritten!"
				break;;
			[Nn]* ) exit;;
			* ) echo "Please answer yes or no.";;
		esac
	done
else
	rsync -avR --no-links --remove-source-files $filepath $HOME/dotfiles/$1
fi

## stows the moved file
stow $1
