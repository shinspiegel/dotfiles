#! /bin/bash

#INSTALING FIRST
sudo apt update
sudo apt install apt-transport-https curl nodejs npm git zsh wget libnss3-tools ca-certificates gnupg-agent software-properties-common htop



#INSTALLING DENO
# curl -fsSL https://deno.land/x/install/install.sh | sh
# export DENO_INSTALL="/home/shin/.local"
# export PATH="$DENO_INSTALL/bin:$PATH"




#UPDATE NODE
sudo npm install -g n
sudo n lts

#expand limit of watch files
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

#installing other node apps 
sudo npm install -g create-react-app serverless serverless-offline

##CREATING /bin FOLDER ON HOME AND ADDING TO PATH VARIABLE
mkdir ~/bin
PATH=$PATH:/home/shin/bin



#INSTALL LOCALHOST CERTS
export VER="v1.3.0"
wget -O mkcert https://github.com/FiloSottile/mkcert/releases/download/v1.4.0/mkcert-v1.4.0-linux-amd64
chmod +x  mkcert
sudo mv mkcert /usr/local/bin

#Adding app to localbinaries for later use
sudo mkdir /opt/mkcert
sudo wget https://raw.githubusercontent.com/shinspiegel/dotfiles/master/src/Certificade/create-cert.sh -O /opt/mkcert/create-cert.sh
sudo chmod 755 /opt/mkcert/create-cert.sh
ln -s /opt/mkcert/create-cert.sh ~/bin/create-cert



#INSTALL SCRIPT FOR CLEANING BRANCHS
sudo mkdir /opt/clean-branchs
sudo wget https://raw.githubusercontent.com/shinspiegel/dotfiles/master/src/clean-branchs/clean-branchs.sh -O /opt/clean-branchs/clean-branchs.sh
sudo chmod 755 /opt/clean-branchs/clean-branchs.sh
ln -s /opt/clean-branchs/clean-branchs.sh ~/bin/clean-branchs

#INSTALL SCRIPT FOR CLEANING BRANCHS
sudo mkdir /opt/git-pull-all
sudo wget https://raw.githubusercontent.com/shinspiegel/dotfiles/master/src/git-pull-all/git-pull-all.sh -O /opt/git-pull-all/git-pull-all.sh
sudo chmod 755 /opt/git-pull-all/git-pull-all.sh
ln -s /opt/git-pull-all/git-pull-all.sh ~/bin/git-pull-all



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



#CHANGE SHELL
chsh -s $(which zsh)
sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
curl -L git.io/antigen > antigen.zsh
# or use git.io/antigen-nightly for the latest version
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
sudo wget https://github.com/powerline/fonts/raw/master/Inconsolata-g/Inconsolata-g%20for%20Powerline.otf -O /usr/share/fonts/Inconsolata-g-for-Powerline.otf
wget https://raw.githubusercontent.com/shinspiegel/dotfiles/master/src/.zshrc -O ~/.zshrc
source ~/.zshrc



#INSTALLING Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
sudo apt-get install libfreetype6-dev



#INSTALLING virtual machine dependencies for android
# sudo apt install qemu-kvm
# ls -al /dev/kvm
# sudo adduser $USER kvm



#INSTALLING DOCKER
sudo apt remove docker docker-engine docker.io containerd runc
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io
sudo usermod -a -G docker $USER

#installing docker-compose
sudo curl -L https://github.com/docker/compose/releases/download/1.25.0-rc4/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose



#INSTALLING APPS VIA DEBIAN FILES
#Discord
wget https://discordapp.com/api/download?platform=linux&format=deb -O ~/Downloads/discord.deb
sudo dpkg -i ~/Downloads/discord.deb
rm -rf ~/Downloads/discord.deb
#Calibre
sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin


#INSTALLING FONTS FOR VISUAL CODE
sudo wget https://github.com/tonsky/FiraCode/raw/master/distr/otf/FiraCode-Bold.otf -O /usr/share/fonts/FiraCode-Bold.otf
sudo wget https://github.com/tonsky/FiraCode/raw/master/distr/otf/FiraCode-Light.otf -O /usr/share/fonts/FiraCode-Light.otf
sudo wget https://github.com/tonsky/FiraCode/raw/master/distr/otf/FiraCode-Medium.otf -O /usr/share/fonts/FiraCode-Medium.otf
sudo wget https://github.com/tonsky/FiraCode/raw/master/distr/otf/FiraCode-Regular.otf -O /usr/share/fonts/FiraCode-Regular.otf
sudo wget https://github.com/tonsky/FiraCode/raw/master/distr/otf/FiraCode-Retina.otf -O /usr/share/fonts/FiraCode-Retina.otf



#INSTALLING GODOT ENGINE
sudo mkdir /opt/godot
mkdir ~/Downloads/godot
wget https://downloads.tuxfamily.org/godotengine/3.1.1/Godot_v3.1.1-stable_x11.64.zip -O ~/Downloads/godot/Godot_v3.1.1-stable_x11.64.zip
sudo unzip ~/Downloads/godot/Godot_v3.1.1-stable_x11.64.zip -d /opt/godot
ln -s /opt/godot/Godot_v3.1.1-stable_x11.64 ~/bin/godot



#DOWNLOADING MAC OS THEME
git clone https://github.com/paullinuxthemer/McOS-Mint-Cinnamon-Edition.git ~/Downloads/macOS-theme
mv ~/Downloads/macOS-theme/McOS-MJV-Cinnamon-Edition-2.0 ~/.themes/macOS_2
rm -rf ~/Downloads/macOS-theme
git clone https://github.com/shinspiegel/dotfiles.git ~/Downloads/macOS-icons
cp ~/Downloads/macOS-icons/src/Cuppertine ~/.icons/CuppertineIcons -r
rm -rf ~/Downloads/macOS-icons



#GENETATE SSH KEY FOR GITHUB/GITLAB
ssh-keygen -t rsa -b 4096 -C "shin.jef@gmail.com"
git config --global user.email "shin.jef@gmail.com"
git config --global user.name "Shin"

echo "------- THIS IS YOUR SSH -------"
cat ~/.ssh/id_rsa.pub
echo "-------                  -------"
echo "Remember to reboot before using docker"
