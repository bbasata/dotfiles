# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)
export FZF_DEFAULT_OPTS="--bind '\\:jump,jump:accept' --color pointer:yellow --cycle --no-info"
