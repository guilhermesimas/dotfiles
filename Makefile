# TODO: single rule to make all this as prerequisites
gitconfig:
	@if [ -e $(HOME)/.$@ ] ; then \
		echo "$@ already exists, backing up $@"; \
		mv $(HOME)/.$@ $(HOME)/.$@.bkp; \
	fi
	ln -s $$(pwd)/.$@ $(HOME)/.$@ 

bashrc:
	@if [ -e $(HOME)/.$@ ] ; then \
		echo "$@ already exists, backing up $@"; \
		mv $(HOME)/.$@ $(HOME)/.$@.bkp; \
	fi
	ln -s $$(pwd)/.$@ $(HOME)/.$@ 

bash_aliases:
	@if [ -e $(HOME)/.$@ ] ; then \
		echo "$@ already exists, backing up $@"; \
		mv $(HOME)/.$@ $(HOME)/.$@.bkp; \
	fi
	ln -s $$(pwd)/.$@ $(HOME)/.$@ 

profile:
	@if [ -e $(HOME)/.$@ ] ; then \
		echo "$@ already exists, backing up $@"; \
		mv $(HOME)/.$@ $(HOME)/.$@.bkp; \
	fi
	ln -s $$(pwd)/.$@ $(HOME)/.$@ 

vimrc:
	@if [ -e $(HOME)/.$@ ] ; then \
		echo "$@ already exists, backing up $@"; \
		mv $(HOME)/.$@ $(HOME)/.$@.bkp; \
	fi
	ln -s $$(pwd)/.$@ $(HOME)/.$@ 

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
