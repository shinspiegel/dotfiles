#! /bin/bash

#GENETATE SSH KEY FOR GITHUB/GITLAB
ssh-keygen -t rsa -b 4096 -C "shin.jef@gmail.com"
git config --global user.email "shin.jef@gmail.com"
git config --global user.name "Shin"

echo "------- THIS IS YOUR SSH -------"
cat ~/.ssh/id_rsa.pub
echo "-------                  -------"
echo "Remember to reboot before using docker"
