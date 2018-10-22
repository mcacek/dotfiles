# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Vim Mode
set -o vi

# Import aliases across shells
source ~/.aliases

# Import default exports
source ~/.exports

[[ -f ~/.exports-secret ]] && source ~/.exports-secret

# Workspace Loader
source ~/.bin/init-workspaces.sh

# NVM Configuration
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# SDKMan
export SDKMAN_DIR="/home/mcacek/.sdkman"
[[ -s "~/.sdkman/bin/sdkman-init.sh" ]] && source "~/.sdkman/bin/sdkman-init.sh"
