#! /bin/bash

TRUE='true'
USERINPUT=$1
PATH_HOME="/Users/$USER/"

rm -rf $PATH_HOME.vim/
rm -rf $PATH_HOME.vimrc

ln -s "$PWD/.vim" "$PATH_HOME.vim"
ln -s "$PWD/.vimrc" "$PATH_HOME.vimrc"
