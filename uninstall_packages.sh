#!/bin/sh

#Postgres
brew uninstall postgres

#Node
brew install node

#Heroku
brew install heroku-toolbelt
heroku plugins:install git://github.com/ddollar/heroku-config.git

#Git
brew uninstall git