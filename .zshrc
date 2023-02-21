export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="fred"
DISABLE_AUTO_UPDATE=true
DISABLE_UPDATE_PROMPT=true
plugins=(git virtualenv docker docker-compose)
source $ZSH/oh-my-zsh.sh

autoload bashcompinit
bashcompinit

alias -- +=code

if [ -d /workspaces ]
then
  if [ -d /usr/local/vcpkg/scripts ]
  then
    source /usr/local/vcpkg/scripts/vcpkg_completion.zsh
  fi

  if [ -f /workspaces/$RepositoryName/.env ]
  then
    set -a
    source /workspaces/$RepositoryName/.env
    set +a
  fi
fi
