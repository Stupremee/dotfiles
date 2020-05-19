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

# History stuff
HISTFILE=$ZDOTDIR/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

# Alias settings
alias config="git --git-dir=$HOME/dev/dotfiles --work-tree=$HOME"

# Load antibody and install plugins defined in plugins.txt
source <(antibody init)
antibody bundle < $ZDOTDIR/plugins.txt

# Start starship
eval $(starship init zsh)
