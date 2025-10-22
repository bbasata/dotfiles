if [[ -x /opt/homebrew/bin/boundary ]]; then
	autoload -U +X bashcompinit && bashcompinit
	complete -o nospace -C /opt/homebrew/bin/boundary boundary
fi

# vim: ts=2 sw=2 sts=2
