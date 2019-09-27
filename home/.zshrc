# VIM Mode
set -o vi

source ~/.aliases
source ~/.exports

[[ -f ~/.exports-secret ]] && source ~/.exports-secret

# Workspace Loader
source ~/.dotbin/init-workspaces.sh

source ~/.zsh-opt/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme candy

antigen apply


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/michaelcacek/.sdkman"
[[ -s "/home/michaelcacek/.sdkman/bin/sdkman-init.sh" ]] && source "/home/michaelcacek/.sdkman/bin/sdkman-init.sh"
