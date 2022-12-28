default:
	echo "Default target"

brew:
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

paq:
	git clone --depth=1 https://github.com/savq/paq-nvim.git \
    "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/pack/paqs/start/paq-nvim

symlinks:
	ln -s ~/code/dotfiles/.zshrc ~/.zshrc
	mkdir -p ~/.config
	ln -s ~/code/dotfiles/git ~/.config/git
	ln -s ~/code/dotfiles/alacritty  ~/.config/alacritty
	ln -s ~/code/dotfiles/wezterm  ~/.config/wezterm
	ln -s ~/code/dotfiles/nvim  ~/.config/nvim

clean:
	rm ~/.zshrc
	rm ~/.config/git
	rm ~/.config/alacritty
	rm ~/.config/wezterm
	rm ~/.config/nvim
