#! /bin/bash

#INSTALLING GODOT ENGINE
sudo mkdir /opt/godot
mkdir ~/Downloads/godot
wget https://downloads.tuxfamily.org/godotengine/3.1.1/Godot_v3.1.1-stable_x11.64.zip -O ~/Downloads/godot/Godot_v3.1.1-stable_x11.64.zip
sudo unzip ~/Downloads/godot/Godot_v3.1.1-stable_x11.64.zip -d /opt/godot
ln -s /opt/godot/Godot_v3.1.1-stable_x11.64 ~/bin/godot