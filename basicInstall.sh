#! /bin/bash

#INSTALING FIRST
sudo apt install apt-transport-https curl nodejs npm git zsh


#UPDATE NODE
sudo npm install -g n
sudo n lts


#ADDING YARN TO PACKAGE LIST
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list


#PRE INSTALL BRAVE
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
source /etc/os-release
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ $UBUNTU_CODENAME main" | sudo tee /etc/apt/sources.list.d/brave-browser-release-${UBUNTU_CODENAME}.list


#INSTALLING LATER
sudo apt update
sudo apt install brave-browser
sudo apt install --no-install-recommends yarn


#CHANGE SHELL
chsh -s $(which zsh)
sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
curl -L git.io/antigen > antigen.zsh
# or use git.io/antigen-nightly for the latest version
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
sudo wget https://github.com/powerline/fonts/raw/master/Inconsolata-g/Inconsolata-g%20for%20Powerline.otf -O /usr/share/fonts/Inconsolata-g-for-Powerline.otf
wget https://raw.githubusercontent.com/shinspiegel/dotfiles/master/src/.zshrc -O ~/.zshrc
source ~/.zshrc


#GENETATE SSH KEY
ssh-keygen -t rsa -b 4096 -C "shin.jef@gmail.com"
cat ~/.ssh/id_rsa.pub

