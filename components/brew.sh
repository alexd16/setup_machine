
source ~/.bash_profile
if ! command -v brew &>/dev/null; then
  echo 'Installing Homebrew'
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
  if command -v brew &>/dev/null; then
    brew doctor
    brew update
    brew tap phinze/cask
    brew install brew-cask
  fi
else
  echo 'Homebrew already installed'
fi
