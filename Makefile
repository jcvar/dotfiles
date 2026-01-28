PAQ_DIR = $(HOME)/.local/share/nvim/site/pack/paqs/start/paq-nvim

init: \
	brew \
	paqsync \
	
	echo "init complete"

brew:
	type brew || /bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

paq:
	[ -d $(PAQ_DIR) ] || git clone --depth=1 https://github.com/savq/paq-nvim.git $(PAQ_DIR)

paqsync: symlinks paq
	nvim --headless -c "autocmd User PaqDoneSync quit" -c "PaqSync"

symlinks:
	ln -fhs ~/code/dotfiles/.zshrc ~/.zshrc
	mkdir -p ~/.config
	ln -fhs ~/code/dotfiles/git ~/.config/git
	ln -fhs ~/code/dotfiles/nvim  ~/.config/nvim

cleanlinks:
	rm -fv ~/.zshrc
	rm -fv ~/.config/git
	rm -fv ~/.config/nvim
