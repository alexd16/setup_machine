#!/bin/bash

echo '##################################'
echo '## Welcome to runtime-revoluton ##'
echo '##################################'

echo -e "\nThis script will setup your machine for ruby on rails development\n"
echo -e "Make sure you have xcode installed from the app store."

./components/brew.sh

./components/packages.sh

./components/rvm.sh
