HISTSIZE=2000
export EDITOR="$(brew --prefix)/bin/nvim"
set -o vi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Set Java environment
export JAVA_HOME="$HOME/.openjdk/jdk-21.0.1.jdk/Contents/Home"
export PATH="$JAVA_HOME/bin:$PATH"

# Add docker to path
export PATH="$PATH:$HOME/.docker/bin"

# Adding local bin to path
export PATH="$PATH:$HOME/.bin"

# Add all projects to CDPATH
export CDPATH=~/workshop/playground/

# Set default config directory
export XDG_CONFIG_HOME="$HOME/workshop/dotfiles/config/"

