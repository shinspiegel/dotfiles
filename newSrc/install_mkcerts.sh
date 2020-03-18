#! /bin/bash

#INSTALL LOCALHOST CERTS
export VER="v1.3.0"
wget -O mkcert https://github.com/FiloSottile/mkcert/releases/download/v1.4.0/mkcert-v1.4.0-linux-amd64
chmod +x  mkcert
sudo mv mkcert /usr/local/bin

#Adding app to localbinaries for later use
sudo mkdir /opt/mkcert
sudo wget https://raw.githubusercontent.com/shinspiegel/dotfiles/master/src/apps/create-cert.sh -O /opt/mkcert/create-cert.sh
sudo chmod 755 /opt/mkcert/create-cert.sh
ln -s /opt/mkcert/create-cert.sh ~/bin/create-cert