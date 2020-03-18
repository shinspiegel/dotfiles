#! /bin/bash

#ADDING YARN TO PACKAGE LIST
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

#PRE INSTALL BRAVE
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
source /etc/os-release
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ $UBUNTU_CODENAME main" | sudo tee /etc/apt/sources.list.d/brave-browser-release-${UBUNTU_CODENAME}.list

#ADDING SOURC FOR INSOMNIA
echo "deb https://dl.bintray.com/getinsomnia/Insomnia /" \
| sudo tee -a /etc/apt/sources.list.d/insomnia.list
# Add public key used to verify code signature
wget --quiet -O - https://insomnia.rest/keys/debian-public.key.asc \
| sudo apt-key add -

#DEALING WITH THE APT INSTALL
sudo apt update

sudo apt install brave-browser
sudo apt install --no-install-recommends yarn
sudo apt-get install insomnia
sudo apt install plank



#INSTALLING APPS VIA DEBIAN FILES
#Discord
wget https://discordapp.com/api/download?platform=linux&format=deb -O ~/Downloads/discord.deb
sudo dpkg -i ~/Downloads/discord.deb
rm -rf ~/Downloads/discord.deb
#Calibre
sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin
