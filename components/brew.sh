
source ~/.bash_profile
#Clear Log File
log_file='brew.log'
echo '' > $log_file

if ! command -v brew &>/dev/null; then
  echo 'Installing Homebrew'
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
  if command -v brew &>/dev/null; then
    brew doctor
    brew update
  fi
else
  echo 'Homebrew already installed'
fi
