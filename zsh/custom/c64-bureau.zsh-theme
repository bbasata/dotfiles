# Modified oh-my-zsh Bureau Theme

_PATH="%{$fg_bold[magenta]%}%~%{$reset_color%}"
_1LEFT="$_PATH"

bureau_precmd () {
  print
  print -rP "$_1LEFT"
}

setopt prompt_subst

PROMPT="%(?:%{$fg_bold[blue]%}READY. :%{$fg_bold[yellow]%}READY? )%{$reset_color%}"

autoload -U add-zsh-hook
add-zsh-hook precmd bureau_precmd
