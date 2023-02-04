PROMPT=$'%{$fg[cyan]%}%T > %{$fg[green]%}%~ $(virtualenv_prompt_info)$(git_prompt_info)%{$reset_color%}~> '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="] "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}+%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_VIRTUALENV_PREFIX="%{$fg[magenta]%}("
ZSH_THEME_VIRTUALENV_SUFFIX=") "
