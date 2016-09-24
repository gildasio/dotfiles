setopt promptsubst
PROMPT=$'%B${(r:$COLUMNS::¨:)}$(git_prompt_info)%{$fg[white]%}>> %b%{$reset_color%}'
RPROMPT='%B%*%b'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[white]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} *%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
