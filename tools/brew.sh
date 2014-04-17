#!/bin/bash

. ~/.bash_profile
echo 'Installing Homebrew'
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew doctor
brew update
brew tap phinze/cask
brew install brew-cask