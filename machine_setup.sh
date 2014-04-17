#!/bin/bash

#Clear Log File
echo '' > $log_file

echo '##################################'
echo '## Welcome to runtime-revoluton ##'
echo '##################################'

echo -e "\nThis script will setup your machine for ruby on rails development\n"

./tools/rvm.sh
./tools/brew.sh
#./tools/devtools.sh

