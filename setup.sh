#!/bin/bash

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" &&
    brew bundle ||
    exit 1


# Install paq
git clone https://github.com/savq/paq-nvim.git \
    "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/pack/paqs/opt/paq-nvim

# Make config symlinks
function symlinks(){
    ln -s ~/code/dotfiles/.zshrc ~/.zshrc
    mkdir ~/.config
    ln -s ~/code/dotfiles/git ~/.config/git
    ln -s ~/code/dotfiles/alacritty  ~/.config/alacritty
    ln -s ~/code/dotfiles/nvim  ~/.config/nvim
}
