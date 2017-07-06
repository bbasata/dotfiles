export EDITOR=vim
export GOPATH=~/go
export ANSIBLE_NOCOWS=1
export HOMEBREW_NO_EMOJI=1

precmd() { title "$(pwd | sed -e 's|.*/||')" }

vpn() {
  local connection="$(get-viscosity-connections | grep '|Disconnected$' | awk -F '|' '{ print $1 }' | fzf)"
  echo $connection
  osascript -e "tell application \"Viscosity\" to connect \"$connection\""
}

unvpn() {
  osascript -e 'tell application "Viscosity" to disconnect every connection'
}
