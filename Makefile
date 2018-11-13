# TODO: Treat exististing files. Suggestion: if file exists move to .bkp
# first

gitconfig:
	cd $(HOME)
	ln -s $$(pwd)/.gitconfig $(HOME)/.gitconfig 
	cd -

bashrc:
	cd $(HOME)
	ln -s $$(pwd)/.bashrc $(HOME)/.bashrc 
	cd -

bash_aliases:
	cd $(HOME)
	ln -s $$(pwd)/.bash_aliases $(HOME)/.bash_aliases 
	cd -

profile:
	cd $(HOME)
	ln -s $$(pwd)/.profile $(HOME)/.profile 
	cd -

vimrc:
	cd $(HOME)
	ln -s $$(pwd)/.vimrc $(HOME)/.vimrc 
	cd -

all-dotfiles: gitconfig bashrc bash_aliases profile vimrc

# TODO: rule to install a list of packages
vim:
	sudo apt install vim-gnome

git:
	sudo apt install git

build-essential:
	sudo apt install build-essential

htop:
	sudo apt install htop

sqlite3:
	sudo apt install sqlite3

all-apt: vim git build-essential htop sqlite3

# TODO: Test install of vundle before .vimrc
vundle:
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	vim +PluginInstall +qall

.PHONY: vim git build-essentials all-apt gitconfig bashrc bash_aliases profile vimrc all-dotfilessqlite3
