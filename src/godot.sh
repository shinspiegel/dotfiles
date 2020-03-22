#! /bin/bash

#INSTALLING GODOT ENGINE
sudo mkdir /opt/godot
mkdir ~/Downloads/godot
wget https://downloads.tuxfamily.org/godotengine/3.2.1/Godot_v3.2.1-stable_x11.64.zip -O ~/Downloads/godot/Godot.zip
sudo unzip ~/Downloads/godot/Godot.zip -d /opt/godot
ln -s /opt/godot/Godot_v3.2.1-stable_x11.64 ~/bin/godot
rm -rf ~/Downloads/godot