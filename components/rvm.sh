#!/bin/bash
source ~/.bash_profile
if ! command -v rvm &>/dev/null; then
  log_file='rvm.log'
  ruby_versions=( 2.1 )
  ruby_gems=( rails )
  #ruby_versions=( 2.1 1.9.3 )

  echo 'Installing RVM'
  \curl -s -L https://get.rvm.io | bash >> $log_file 2>&1
  echo -e '\nsource ~/.profile' >> ~/.bash_profile
  echo 'source ~/.rvm/scripts/rvm' >> ~/.bash_profile

  echo 'RVM installed. Loading RVM'
  if [ -f ~/.profile ] ; then
    source ~/.profile
  fi
  if [ -f ~/.bashrc ] ; then
    source ~/.bashrc
  fi
  if [ -f ~/.bash_profile ] ; then
    source ~/.bash_profile
  fi
  echo 'Installing Ruby versions, this may take a while.'
  for version in ${ruby_versions[@]}; do
    echo "Installing $version...."
    rvm install $version >> $log_file 2>&1
    echo "Ruby $version installed"
    rvm use $version
    echo 'Updating ruby gems...'
    gem update --system --no-ri --no-rdoc >> $log_file 2>&1
    echo 'Ruby gems updated'
    echo "Install gems for Ruby $version"
    for gem in ${ruby_gems[@]}; do
      echo "Installing $gem ..."
      gem install $gem --no-ri --no-rdoc >> $log_file 2>&1
      echo "$gem installed"
    done
  done
  rvm use ${ruby_versions[0]} --default
  rm $log_file
  echo 'Installation completed.'
else
  echo 'RVM already installed'
fi
