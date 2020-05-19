export TERMINAL="alacritty"
export TERM=$TERMINAL
export LANG=en_US.UTF-8
export ZDOTDIR="$HOME/.config/zsh"
export MANPATH="$(manpath 2> /dev/null)"
export EDITOR="nvim"
export GOPATH="$HOME/dev/go"
export PATH="$PATH:$HOME/.local/bin"

# Load secret environment variables
source $ZDOTDIR/.zsecrets
