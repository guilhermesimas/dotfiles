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
	sudo apt install -y vim-gnome

git:
	sudo apt install -y git

build-essential:
	sudo apt install -y build-essential

htop:
	sudo apt install -y htop

sqlite3:
	sudo apt install -y sqlite3

all-apt: vim git build-essential htop sqlite3

# TODO: Test install of vundle before .vimrc
vundle:
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	vim +PluginInstall +qall

pyenv:
	sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev liblzma-dev
	git clone https://github.com/pyenv/pyenv.git $(HOME)/.pyenv

pyenv-virtualenv:
	sudo git clone https://github.com/pyenv/pyenv-virtualenv.git $$(pyenv root)/plugins/pyenv-virtualenv

.PHONY: vim git build-essentials all-apt gitconfig bashrc bash_aliases profile vimrc all-dotfilessqlite3 pyenv
