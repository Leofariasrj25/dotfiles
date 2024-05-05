# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
# plug "zap-zsh/zap-prompt"
plug "romkatv/powerlevel10k"
plug "zap-zsh/supercharge"
plug "Aloxaf/fzf-tab"
plug "zsh-users/zsh-syntax-highlighting"
plug "zsh-users/zsh-autosuggestions"

# Load and initialise completion system
autoload -Uz compinit
compinit

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ENV VARIABLES
export LESS='-R --use-color -Dd+r$Du+b'
# -------------------------------------
# General
# -------------------------------------

alias cat=bat
alias ls=lsd

# -------------------------------------
# Navigation
# -------------------------------------

alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ......='cd ../../../../..'
alias .1='cd ..'
alias .2='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

alias ld='ls -l --directory-only'
alias ll='ls -lA' # list everything
alias lt='ls -l --sort time'

# ------------------------------------------------------------------
# Git
# ------------------------------------------------------------------
alias gs='git status'
alias gcm='git commit -m'
alias gl='git log --pretty=oneline -n 10'
alias go='git push origin'

# ------------------------------------------------------------------
# Networking and IP 
# ------------------------------------------------------------------
alias ping='ping -c 5'
alias ports='netstat -vatnp'

# helper functions

function jrun() {
  javac $1 && java $1
}

# compiler c with 42 appropriate flags

function c42() {
  cc -Wall -Werror -Wextra $@ && ./a.out
}
