#!/bin/bash

#Install homebrew and set it up with zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/bruse/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
brew update
brew upgrade

brew install git
git config --global init.defaultBranch main
git config --global user.name "Andreas Bruse"
git config --global user.email "andreas@bruse.se"

brew install nvim
brew install --cask transmission
brew install --cask kitty
brew install secretive # Store SSH keys in secure enclave
brew install --cask stats # Menubar system monitor
brew install bitwarden
brew install fzf

brew install --cask font-symbols-only-nerd-font
curl -L -o ~/Library/Fonts/nonicons.ttf https://github.com/yamatsum/nonicons/raw/master/dist/nonicons.ttf
