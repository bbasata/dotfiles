export PATH=~/bin:/Applications/Postgres.app/Contents/Versions/latest/bin:/usr/local/sbin:$PATH
export EDITOR=vim
export GOPATH=~/go
export ANSIBLE_NOCOWS=1
export HOMEBREW_NO_EMOJI=1
eval "$(/usr/local/bin/hub alias -s)"
precmd() { title "$(pwd | sed -e 's|.*/||')" }

vpn() {
  local connection="$(get-viscosity-connections | grep '|Disconnected$' | awk -F '|' '{ print $1 }' | fzf)"
  echo $connection
  osascript -e "tell application \"Viscosity\" to connect \"$connection\""
}

unvpn() {
  osascript -e 'tell application "Viscosity" to disconnect every connection'
}
