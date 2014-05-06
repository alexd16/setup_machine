
source ~/.bash_profile
#Clear Log File
log_file='packages.log'
echo '' > $log_file

echo "Installing postgres, node and heroku-toolbelt..."
#Postgres
brew install postgresql --no-python >> $log_file 2>&1
mkdir -p ~/Library/LaunchAgents
ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
brew services start postgresql

#Node
brew install node >> $log_file 2>&1

#Heroku
brew install heroku-toolbelt >> $log_file 2>&1
heroku plugins:install git://github.com/ddollar/heroku-config.git >> $log_file 2>&1

#Git
brew install git

#ZSH
chsh -s $(which zsh)
if [[ -f /etc/zshenv ]]; then
  echo "Fixing OSX zsh environment bug ..."
    sudo mv /etc/{zshenv,zshrc}
fi

curl -L http://install.ohmyz.sh | sh

sed -i -e '/ZSH_THEME=/ c\
ZSH_THEME="bira"
' ~/.zshrc

sed -i -e '/plugins=/ c\
plugins=(git rails ruby rvm heroku brew)
' ~/.zshrc


echo "Installation completed."
