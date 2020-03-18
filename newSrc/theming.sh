#! /bin/bash

#CHANGE SHELL
chsh -s $(which zsh)
sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
curl -L git.io/antigen > antigen.zsh
# or use git.io/antigen-nightly for the latest version
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
sudo wget https://github.com/powerline/fonts/raw/master/Inconsolata-g/Inconsolata-g%20for%20Powerline.otf -O /usr/share/fonts/Inconsolata-g-for-Powerline.otf
wget https://raw.githubusercontent.com/shinspiegel/dotfiles/master/src/.zshrc -O ~/.zshrc
source ~/.zshrc

#INSTALLING FONTS FOR VISUAL CODE
sudo wget https://github.com/tonsky/FiraCode/raw/master/distr/otf/FiraCode-Bold.otf -O /usr/share/fonts/FiraCode-Bold.otf
sudo wget https://github.com/tonsky/FiraCode/raw/master/distr/otf/FiraCode-Light.otf -O /usr/share/fonts/FiraCode-Light.otf
sudo wget https://github.com/tonsky/FiraCode/raw/master/distr/otf/FiraCode-Medium.otf -O /usr/share/fonts/FiraCode-Medium.otf
sudo wget https://github.com/tonsky/FiraCode/raw/master/distr/otf/FiraCode-Regular.otf -O /usr/share/fonts/FiraCode-Regular.otf
sudo wget https://github.com/tonsky/FiraCode/raw/master/distr/otf/FiraCode-Retina.otf -O /usr/share/fonts/FiraCode-Retina.otf

#DOWNLOADING MAC OS THEME
git clone https://github.com/paullinuxthemer/McOS-Mint-Cinnamon-Edition.git ~/Downloads/macOS-theme
mv ~/Downloads/macOS-theme/McOS-MJV-Cinnamon-Edition-2.0 ~/.themes/macOS_2
rm -rf ~/Downloads/macOS-theme
git clone https://github.com/shinspiegel/dotfiles.git ~/Downloads/macOS-icons
cp ~/Downloads/macOS-icons/src/Cuppertine ~/.icons/CuppertineIcons -r
rm -rf ~/Downloads/macOS-icons

