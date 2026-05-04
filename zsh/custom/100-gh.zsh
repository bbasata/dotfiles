function clone () {
	local owner="$(basename $(pwd))"

	if [[ $# -ge 1 ]]; then 
		local name=$1; shift
		gh repo clone "$owner/$name" "$@"
	else
		if [[ -f "$HOME/.config/gtd/github-${owner}.txt" ]]; then
			gh repo clone "$(cat $HOME/.config/gtd/github-${owner}.txt | fzf)"
		else
			echo 'Where do you want to go today?'
		fi
	fi
}

# vim: ts=2 sw=2
