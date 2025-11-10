if [[ -x "$HOME/bin/terraform" ]]; then 
	autoload -U +X bashcompinit && bashcompinit
	complete -o nospace -C "$HOME/bin/terraform" terraform
fi


function install_terraform () {
	version="$(curl -s https://releases.hashicorp.com/terraform/index.json | jq -r '.versions | map(.version) | .[]' | sort -V --reverse | fzf)"

	if [[ $? -ne 0 ]]; then
		echo "Have a nice day 🙂" >&2
		return
	fi

	hc-install install -path $HOME/bin -version "$version" terraform
}

# vim: ts=2 sw=2 sts=2
