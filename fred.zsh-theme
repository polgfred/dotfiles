PROMPT=$'%{$fg[cyan]%}%T > %{$fg[green]%}%~ > $(virtualenv_prompt_info)$(git_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[yellow]%} > "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*"
ZSH_THEME_GIT_PROMPT_CLEAN=""
