#! /bin/bash

#INSTALL SCRIPT FOR CLEANING BRANCHS
sudo mkdir /opt/create-branch
sudo wget https://raw.githubusercontent.com/shinspiegel/dotfiles/master/src/apps/create-branch.sh -O /opt/create-branch/create-branch.sh
sudo chmod 755 /opt/create-branch/create-branch.sh
ln -s /opt/create-branch/create-branch.sh ~/bin/create-branch