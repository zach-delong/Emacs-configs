
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

GIT_PROMPT_ONLY_IN_REPO=1
#if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
#	source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
#fi
source "$(brew --prefix)/Cellar/bash-git-prompt/2.3.5/share/gitprompt.sh"
