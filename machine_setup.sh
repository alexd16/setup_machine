#!/bin/bash

#Clear Log File
echo '' > $log_file

echo '##################################'
echo '## Welcome to runtime-revoluton ##'
echo '##################################'

echo -e "\nThis script will setup your machine for ruby on rails development\n"
echo -e "Make sure you have xcode installed from the app store."

./components/brew.sh

. ~/.bash_profile

./components/rvm.sh

. ~/.bash_profile

./components/packages.sh

./components/apps.sh
