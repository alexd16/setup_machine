#!/bin/bash

sudo rm -rf ~/.rvm
sed -i '.original' '/rvm/d' ~/.bash_profile
. ~/.bash_profile