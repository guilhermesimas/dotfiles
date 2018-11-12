# TODO: symbolic link to all the files here

# TODO: rule to install a list of packages
vim:
	sudo apt install vim-gnome

git:
	sudo apt install git

build-essential:
	sudo apt install build-essential

htop:
	sudo apt install htop

all-apt: vim git build-essential htop

# TODO: Test install of vundle before .vimrc
vundle:
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	vim +PluginInstall +qall

.PHONY: vim git build-essentials all-apt
