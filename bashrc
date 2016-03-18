if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export PATH=/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export EDITOR=vim
export GOPATH=~/go
export PATH="$GOPATH/bin:$PATH"

# cd
function cd () {
  builtin cd "$@" > /dev/null
}

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
