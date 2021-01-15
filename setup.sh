#!/bin/bash

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" &&
	brew bundle ||
	exit 1

# Make config symlinks
ln -s ~/code/.dotfiles/.zshrc ~/.zshrc
mkdir ~/.config
ln -s ~/code/.dotfiles/git ~/.config/git
ln -s ~/code/.dotfiles/alacritty  ~/.config/alacritty
ln -s ~/code/.dotfiles/nvim  ~/.config/nvim

