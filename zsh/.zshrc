# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="catppuccin-mocha"
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/custom/themes/catppuccin_mocha-zsh-syntax-highlighting.zsh

# Aliases
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ll="ls -lah"
alias la="ls -A"
alias lt="ls -lth"

# Tools
eval "$(~/.local/bin/mise activate zsh)"