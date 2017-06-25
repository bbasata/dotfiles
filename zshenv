export PATH=~/bin:/Applications/Postgres.app/Contents/MacOS/bin:$PATH
export EDITOR=vim
export ANSIBLE_NOCOWS=1
export HOMEBREW_NO_EMOJI=1
eval "$(/usr/local/bin/hub alias -s)"
precmd() { title "$(pwd | sed -e 's|.*/||')" }
