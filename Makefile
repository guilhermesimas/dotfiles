# TODO: Make an install script so that on new machines all the installations are done automatically
# This would ideally include a rule to install packages suck as vim-gnome, build-essentials; A rule
# to install vim packages such as vundle, a rule to install texlive, etc. the objective would be to
# be ready to go in a new machine in an instant

# TODO: symbolic link to all the files here

vim:
	sudo apt install vim-gnome

git:
	sudo apt install git

build-essential:
	sudo apt install build-essential

htop:
	sudo apt install htop

all-apt: vim git build-essential htop


.PHONY: vim git build-essentials all-apt
