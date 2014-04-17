#!/bin/bash
log_file="install.log"
ruby_versions=( 2.1 )

echo 'Installing RVM'
\curl -s -L https://get.rvm.io | bash >> $log_file 2>&1
echo -e '\nsource ~/.profile' >> ~/.bash_profile
echo 'source ~/.rvm/scripts/rvm' >> ~/.bash_profile

echo 'RVM installed. Loading RVM'
if [ -f ~/.profile ] ; then
  echo 'Source profile'
  source ~/.profile
fi
if [ -f ~/.bashrc ] ; then
  echo 'Source Bash bashrc'
  source ~/.bashrc
fi
if [ -f ~/.bash_profile ] ; then
  echo 'Source bash_profile'
  source ~/.bash_profile
fi
echo 'Installing Ruby versions, This may take a while...'
for version in ${ruby_versions[@]}; do
  rvm install $version >> $log_file 2>&1
  echo "Ruby $version installed"
done 
echo 'Installation completed.'
echo 'Updating ruby gems...'
rvm use ${ruby_versions[0]} --default
gem update --system --no-ri --no-rdoc >> $log_file 2>&1
rm $log_file
echo 'Installing Rails...'
gem install rails