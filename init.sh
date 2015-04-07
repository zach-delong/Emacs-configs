#! /bin/bash

TRUE='true'
USERINPUT=$1
PATH_TO_VIM="/Users/$USER/.vim/"
PATH_TO_VIMRC="/Users/$USER/.vimrc"

if [ "$USERINPUT" = "c" ]; then
	printf "Moving your config to the repository\n"
	
	rm -rf vim/
	rm vimrc
	#Copy the current vim config into this directory
	cp -r "$PATH_TO_VIM" "vim/"
	cp "$PATH_TO_VIMRC" "vimrc"
elif [ "$USERINPUT" = "r" ]; then
	printf "Moving the configs in this repository to your machine!\n"
	
	rm -rf "$PATH_TO_VIM"
	rm "$PATH_TO_VIMRC"

	cp -r "vim/" "$PATH_TO_VIM"
	cp "vimrc" "$PATH_TO_VIMRC"

else
	printf "Use option 'c' to copy your config files here!\n"
	printf "Use option 'r' to move the repo's configs out\n"
fi
