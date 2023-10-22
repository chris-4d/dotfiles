####################################
# General Environment
####################################

export TZ='America/Los_Angeles'

####################################
# ZSH Setup
####################################

export ZSH="$HOME/.oh-my-zsh"

# Install plugins
if [[ ! -d ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions ]]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi
if [[ ! -d ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting ]]; then
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
fi

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

# General
alias ls='exa --git --long'

# Docker
alias docker-compose="docker compose"
alias dc="docker compose"

# Git
alias gco='git checkout'
alias gca='git commit --amend --no-edit'
