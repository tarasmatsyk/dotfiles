#!/bin/bash
############################
# git_clone.sh
# this script does care about copying and configuring components from git
###########################

# install rbenv
env -i git clone https://github.com/sstephenson/rbenv.git ~/.rbenv

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
