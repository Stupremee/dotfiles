export TERMINAL="alacritty"
export TERM=$TERMINAL
export BROWSER="qutebrowser"
export LANG=en_US.UTF-8
export ZDOTDIR="$HOME/.config/zsh"
export MANPATH="$(manpath 2> /dev/null)"
export EDITOR="nvim"
export GOPATH="$HOME/dev/go"
export PATH="$HOME/.ghcup/bin:$PATH:$HOME/.local/bin:$HOME/.cargo/bin:$HOME/.emacs.d/bin"
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
export CARGO_TARGET_DIR="$HOME/.cargo/target"

# Load secret environment variables
source $ZDOTDIR/.zsecrets

# Colorize man pages.
export PAGER=less
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'
export LESSHISTFILE=-
