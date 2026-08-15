# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)
export FZF_CTRL_R_OPTS="--height=1"
export FZF_DEFAULT_OPTS="--bind '\\:jump,jump:accept' --color pointer:yellow --cycle --no-info"
