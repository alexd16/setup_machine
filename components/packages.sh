
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

echo "Installation completed."
