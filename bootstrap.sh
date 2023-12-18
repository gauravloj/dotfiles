#!/bin/bash -e

# Check and install homebrew
if ! which brew > /dev/null; then
  echo "Installing homebrew..."
  curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | bash
else
  echo "Homebrew already installed"
fi


# Check and install relevant packages
packagelist='alacritty ls git zsh tmux vim neovim python3 visual-studio-code kitty'

for package in $packagelist; do

  if  (brew list $package 2>&1 ) > /dev/null  ||   ( which $package 2>&1 ) > /dev/null ; then
    echo "$package already installed"
  else
    echo "Installing $package..."
    # brew install $package
  fi
done

# Setup config filed
SRC_REPO='https://github.com/gauravloj/dotfiles.git'
clonepath=$(mktemp -d)
git clone $SRC_REPO $clonepath
cd $clonepath
cp -r config ~/.config
cp -r inputrc ~/.inputrc
cp -r ssh ~/.ssh
cp -r vimconfig ~/.vim

# Setup zsh
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# cp zshrc ~/.zshrc
# cp -r zshcustom ~/.oh-my-zsh/custom
