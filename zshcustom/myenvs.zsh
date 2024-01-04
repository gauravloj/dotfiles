HISTSIZE=2000
export EDITOR="$(brew --prefix)/bin/nvim"
set -o vi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# set custom bin path
# export PATH=~/workshop/bins:$PATH

export CDPATH=~/workshop/playground/
