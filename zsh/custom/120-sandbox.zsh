copilot() {
	/usr/bin/env -i -P/opt/homebrew/bin HOME="$HOME" PATH="$HOME/go/bin:$HOME/bin:/opt/homebrew/bin:/usr/bin:/bin:/usr/sbin:/sbin" copilot \
		--allow-tool="shell(terraform fmt),shell(terraform init),shell(terraform validate),shell(terraform providers)" \
		"$@"
}

copilot-plan() {
	/usr/bin/env -i -P/opt/homebrew/bin HOME="$HOME" PATH="$HOME/go/bin:$HOME/bin:/opt/homebrew/bin:/usr/bin:/bin:/usr/sbin:/sbin" copilot \
		--allow-tool="shell(terraform:fmt),shell(terraform:init),shell(terraform:validate),shell(terraform:providers),shell(terraform:modules),shell(terraform:output)" \
		--deny-tool="shell(terraform:apply),shell(terraform:destroy),shell(terraform:state rm),shell(terraform:state mv),shell(terraform:state push),shell(terraform:state replace-provider),shell(terraform:taint),shell(terraform:untaint)"
		"$@"
}


opencode() {
	/usr/bin/env -i -P/opt/homebrew/bin HOME="$HOME" PATH="$HOME/bin:/opt/homebrew/bin:/usr/bin:/bin:/usr/sbin:/sbin" opencode "$@"
}

# vim: ts=2 sw=2
