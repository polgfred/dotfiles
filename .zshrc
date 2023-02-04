export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="fred"
DISABLE_AUTO_UPDATE=true
DISABLE_UPDATE_PROMPT=true
plugins=(git docker docker-compose)
source $ZSH/oh-my-zsh.sh

autoload bashcompinit
bashcompinit

alias -- +=code

if [ "$CODESPACES" = "true" ]; then
  if [ -d /usr/local/vcpkg/scripts ]; then
    source /usr/local/vcpkg/scripts/vcpkg_completion.zsh
  fi

  if [ -d /workspaces/codespace-tools ]; then
    source /workspaces/codespace-tools/codespace-tools.sh
    eval $(codespace-tools get_env_variables)
    export PATH=$DEVCONTAINER_BIN_DIR:$PATH
  fi
fi
