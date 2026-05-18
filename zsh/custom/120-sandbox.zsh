copilot() {
	/usr/bin/env -i -P/opt/homebrew/bin HOME="$HOME" PATH="$HOME/bin:/opt/homebrew/bin:/usr/bin:/bin:/usr/sbin:/sbin" copilot \
		--allow-tool="shell(terraform fmt),shell(terraform init),shell(terraform validate),shell(terraform providers)" \
		"$@"
}


opencode() {
	/usr/bin/env -i -P/opt/homebrew/bin HOME="$HOME" PATH="$HOME/bin:/opt/homebrew/bin:/usr/bin:/bin:/usr/sbin:/sbin" opencode "$@"
}

# vim: ts=2 sw=2
