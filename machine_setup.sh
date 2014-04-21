#!/bin/bash

#Clear Log File
echo '' > $log_file

echo '##################################'
echo '## Welcome to runtime-revoluton ##'
echo '##################################'

echo -e "\nThis script will setup your machine for ruby on rails development\n"

./components/brew.sh

. ~/.bash_profile

./components/rvm.sh

. ~/.bash_profile

./components/packages.sh

./components/apps.sh
