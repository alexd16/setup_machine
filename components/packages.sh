
source ~/.bash_profile

echo "Installing postgres, node and heroku-toolbelt..."
#Postgres
brew install postgres --no-python >> $log_file 2>&1
brew services start postgres

#Node
brew install node >> $log_file 2>&1

#Heroku
brew install heroku-toolbelt >> $log_file 2>&1
heroku plugins:install git://github.com/ddollar/heroku-config.git >> $log_file 2>&1


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
