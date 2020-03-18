#! /bin/bash

#INSTALL SCRIPT FOR CLEANING BRANCHS
sudo mkdir /opt/clean-branchs
sudo wget https://raw.githubusercontent.com/shinspiegel/dotfiles/master/src/clean-branchs/clean-branchs.sh -O /opt/clean-branchs/clean-branchs.sh
sudo chmod 755 /opt/clean-branchs/clean-branchs.sh
ln -s /opt/clean-branchs/clean-branchs.sh ~/bin/clean-branchs