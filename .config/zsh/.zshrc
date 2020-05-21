# This is required for gpg to prompt for the passphrase in the tty
export GPG_TTY=$(tty)

# General settings
autoload -U colors && colors
setopt HIST_IGNORE_SPACE
setopt incappendhistory
setopt sharehistory

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit

# Include hidden files in completions
_comp_options+=(globdots)

# Set cache directory
ZSH_CACHE_DIR="$HOME/.cache/zsh"

# Use vi keybindings
bindkey -v

# Use vi keys in completion menu
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# History stuff
HISTFILE=$ZDOTDIR/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

# Alias settings
alias ls="exa"
alias l="ls -la"
alias cat="bat"
alias py="python"
alias g="git"
alias ps="procs"
alias pdf="zathura"

alias config="git --git-dir=$HOME/dev/dotfiles --work-tree=$HOME"

alias pac="sudo pacman"
alias packill="pac -Rcns"
alias pacupdate="pac -Syyuu"

# Init hub tool
eval "$(hub alias -s)"

# Load antibody and install plugins defined in plugins.txt
source <(antibody init)
antibody bundle < $ZDOTDIR/plugins.txt

# Load fzf key bindings, theme and completion
source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh
source $ZDOTDIR/fzf.config

# Start starship
eval $(starship init zsh)
