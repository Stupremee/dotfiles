export TERMINAL="alacritty"
export TERM=$TERMINAL
export LANG=en_US.UTF-8
export ZDOTDIR="$HOME/.config/zsh"
export MANPATH="$(manpath)"
export EDITOR="nvim"
export GOPATH="$HOME/dev/go"

# Load secret environment variables
source $ZDOTDIR/.zsecrets
