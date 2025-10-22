if [[ -x "$HOME/bin/terraform" ]]; then 
	autoload -U +X bashcompinit && bashcompinit
	complete -o nospace -C "$HOME/bin/terraform" terraform
fi

# vim: ts=2 sw=2 sts=2
