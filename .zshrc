export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="fred"
DISABLE_AUTO_UPDATE=true
DISABLE_UPDATE_PROMPT=true
plugins=(git virtualenv docker docker-compose)
source $ZSH/oh-my-zsh.sh

autoload -Uz compinit
compinit

alias -- +=code
alias riff="pnpm --filter web riff"
