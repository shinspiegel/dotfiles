#! /bin/bash

#INSTALLING virtual machine dependencies for android
sudo apt install qemu-kvm
ls -al /dev/kvm
sudo adduser $USER kvm