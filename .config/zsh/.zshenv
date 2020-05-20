export TERMINAL="alacritty"
export TERM=$TERMINAL
export BROWSER="qutebrowser"
export LANG=en_US.UTF-8
export ZDOTDIR="$HOME/.config/zsh"
export MANPATH="$(manpath 2> /dev/null)"
export EDITOR="nvim"
export GOPATH="$HOME/dev/go"
export PATH="$PATH:$HOME/.local/bin:$HOME/.cargo/bin"
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
export CARGO_TARGET_DIR="$HOME/.cargo/target"

# Load secret environment variables
source $ZDOTDIR/.zsecrets
