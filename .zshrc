####################################
# ZSH Setup
####################################

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"
DISABLE_AUTO_UPDATE=true
DISABLE_UPDATE_PROMPT=true

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

####################################
# Prompts
####################################

# Starship prompt
eval "$(starship init zsh)"

####################################
# Aliases
####################################

# Docker
alias docker-compose="docker compose"
alias dc="docker compose"

# Git
alias gco='git checkout'
alias gca='git commit --amend --no-edit'
