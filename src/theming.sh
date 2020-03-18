#! /bin/bash

#CHANGE SHELL
chsh -s $(which zsh)
sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo wget https://raw.githubusercontent.com/zsh-users/antigen/develop/src/antigen.zsh -O ~/antigen.zsh

# or use git.io/antigen-nightly for the latest version
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
sudo wget https://github.com/shinspiegel/dotfiles/raw/master/newSrc/assets/fonts/Inconsolata-g-for-Powerline.otf -O /usr/share/fonts/Inconsolata-g-for-Powerline.otf
sudo wget https://raw.githubusercontent.com/shinspiegel/dotfiles/master/src/assets/.zshrc -O ~/.zshrc


#INSTALLING FONTS FOR VISUAL CODE
sudo wget https://github.com/shinspiegel/dotfiles/raw/master/newSrc/assets/fonts/FiraCode-Bold.otf -O /usr/share/fonts/FiraCode-Bold.otf
sudo wget https://github.com/shinspiegel/dotfiles/raw/master/newSrc/assets/fonts/FiraCode-Light.otf -O /usr/share/fonts/FiraCode-Light.otf
sudo wget https://github.com/shinspiegel/dotfiles/raw/master/newSrc/assets/fonts/FiraCode-Medium.otf -O /usr/share/fonts/FiraCode-Medium.otf
sudo wget https://github.com/shinspiegel/dotfiles/raw/master/newSrc/assets/fonts/FiraCode-Regular.otf -O /usr/share/fonts/FiraCode-Regular.otf
sudo wget https://github.com/shinspiegel/dotfiles/raw/master/newSrc/assets/fonts/FiraCode-Retina.otf -O /usr/share/fonts/FiraCode-Retina.otf


#DOWNLOADING MAC OS THEME
mkdir /home/$USER/.themes
mkdir /home/$USER/.icons

git clone https://github.com/shinspiegel/dotfiles.git ~/Downloads/files_to_copy

cp ~/Downloads/macOS-icons/src/assets/icons ~/.themes/CuppertineIcons -r
cp ~/Downloads/macOS-icons/src/assets/theme ~/.icons/CuppertineIcons -r

rm -rf ~/Downloads/theme_macOS