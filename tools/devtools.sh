#!/bin/bash

. ~/.bash_profile

#Postgres
brew install postgres --no-python
brew services start postgres
brew cast install pgadmin3

#Node
brew install node

#Heroku
brew install heroku-toolbelt
heroku plugins:install git://github.com/ddollar/heroku-config.git