alias apache='sudo apachectl'
alias sml='/usr/local/smlnj/bin/sml'
#source ~/.profile
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

source ~/.git-completion.bash
source ~/.git-prompt.sh

MAGENTA="\[\033[0;35m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[34m\]"
LIGHT_GRAY="\[\033[0;37m\]"
CYAN="\[\033[0;36m\]"
GREEN="\[\033[0;32m\]"
GIT_PS1_SHOWDIRTYSTATE=true
#export LS_OPTIONS='--color=auto'
#export CLICOLOR='Yes'
#export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

export PS1="\u@\h \w"'$(
if [[ $(__git_ps1) =~ \*\)$ ]]
	# a file has been modified but not added
then echo "''" $(__git_ps1 " (%s)")
elif [[ $(__git_ps1) =~ \+\)$ ]]
	# a file has been added, but not commited
then echo "''" $(__git_ps1 " (%s)")
	# the state is clean, changes are commited
else echo "''" $(__git_ps1 " (%s)")
fi)'""" \n$ "

alias ll='ls -lah'
alias gg='git status -s'

#PS1="[\u@\h] \W $ $(__git_ps1 " (%s)") "
