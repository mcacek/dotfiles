#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# Vim Mode
set -o vi

# Import aliases across shells
source ~/.aliases

# Import default exports
source ~/.exports

[[ -f ~/.exports-secret ]] && source ~/.exports-secret

# Tmuxinator
alias mux="tmuxinator"

# NVM Configuration
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
