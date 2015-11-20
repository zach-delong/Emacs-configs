#! /bin/bash

TRUE='true'
USERINPUT=$1
PATH_HOME="/Users/$USER/"

rm -rf $PATH_HOME.vim
rm -rf $PATH_HOME.vimrc
rm -rf $PATH_HOME.bash_profile
rm -rf $PATH_HOME.git-completion.bash
rm -rf $PATH_HOME.git-prompt.sh
rm -rf $PATH_HOME.bashrc
rm -rf $PATH_HOME.tmux.conf
rm -rf $PATH_HOME.zshrc.conf

ln -s "$PWD/vim" "$PATH_HOME.vim"
ln -s "$PWD/vimrc" "$PATH_HOME.vimrc"
ln -s "$PWD/bash_profile" "$PATH_HOME.bash_profile"
ln -s "$PWD/git-completion.bash" "$PATH_HOME.git-completion.bash"
ln -s "$PWD/git-prompt.sh" "$PATH_HOME.git-prompt.sh"
ln -s "$PWD/bashrc" "$PATH_HOME.bashrc"
ln -s "$PWD/tmux.conf" "$PATH_HOME.tmux.conf"
ln -s "$PWD/tmux.conf" "$PATH_HOME.zshrc.conf"
