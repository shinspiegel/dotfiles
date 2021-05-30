#! /bin/bash


# Copiando repo em pasta para guardar coisas
git clone -b macos git@github.com:shinspiegel/dotfiles.git ~/.dotfiles
ln -s ~/.dotfiles/src/assets/.zshrc ~/.zshrc


# Rails install
sudo gem install cocoapods


# BREW
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install wget deno rbenv node watchman iterm2
brew install --cask adoptopenjdk/openjdk/adoptopenjdk8


# Oh My ZSH
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
ln -s ~/.dotfiles/src/assets/.shin.zsh-theme ~/.oh-my-zsh/themes/shin.zsh-theme


# Ruby environment
rbenv init
rbenv install 2.5.1
rbenv global 2.5.1
gem install bundler


