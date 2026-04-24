export ZSH=$HOME/.oh-my-zsh

PATH=$PATH:$HOME/.local/bin

ZSH_THEME="fred"
DISABLE_AUTO_UPDATE=true
DISABLE_UPDATE_PROMPT=true
plugins=(git gh nvm npm docker docker-compose)
zstyle ':omz:plugins:nvm' autoload yes
source $ZSH/oh-my-zsh.sh

autoload -Uz compinit
compinit

alias -- +=code

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
