#! /bin/bash

#REMOVE IN CASE OF ALREADY INSTALED
sudo apt remove docker docker-engine docker.io containerd runc

sudo apt-get update;
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common;
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo touch /etc/apt/sources.list.d/additional-repositories.list
echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" >> /etc/apt/sources.list.d/additional-repositories.list
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io