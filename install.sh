#! /bin/bash

chmod 755 ./newSrc/basic.sh
chmod 755 ./newSrc/theming.sh
chmod 755 ./newSrc/updateNode_and_nodeApps.sh
chmod 755 ./newSrc/install_mkcerts.sh
chmod 755 ./newSrc/install_otherApps.sh
chmod 755 ./newSrc/ssh.sh
chmod 755 ./newSrc/install_clean-branchs.sh
chmod 755 ./newSrc/deno.sh
chmod 755 ./newSrc/docker.sh
chmod 755 ./newSrc/godot.sh
chmod 755 ./newSrc/rust.sh
chmod 755 ./newSrc/virtualMachineDependencies.sh


# This is the most basic stuff, enable the rest
./newSrc/basic.sh
./newSrc/theming.sh
./newSrc/updateNode_and_nodeApps.sh
./newSrc/install_mkcerts.sh
./newSrc/install_otherApps.sh
./newSrc/ssh.sh


# Usefull stuff
./newSrc/install_clean-branchs.sh
./newSrc/deno.sh
./newSrc/docker.sh
./newSrc/godot.sh
./newSrc/rust.sh
./newSrc/virtualMachineDependencies.sh

