#! /bin/bash

#INSTALING FIRST
sudo apt update
sudo apt install apt-transport-https curl nodejs npm git zsh wget libnss3-tools ca-certificates gnupg-agent software-properties-common htop

#expand limit of watch files
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

#CREATING /bin FOLDER ON HOME AND ADDING TO PATH VARIABLE
mkdir ~/bin
PATH=$PATH:/home/$USER/bin

#CREATING FOLDER FOR STYLES AND THEME
mkdir /home/$USER/.themes
mkdir /home/$USER/.icons