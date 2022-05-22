#!/bin/bash


sudo apt-get update

yes | sudo apt-get upgrade

#spotify


sudo rm /etc/apt/preferences.d/nosnap.pref
sudo apt update
sudo apt install snapd

snap find spotify

yes | sudo snap install spotify

# install google chrome

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# other stuff

sudo apt install unrar

yes | sudo apt install libreoffice

yes | sudo apt install okular

yes | sudo apt install python3-pip

yes | sudo apt install vim

# visual studio code
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg

sudo apt install apt-transport-https
sudo apt update
sudo apt install code

# install hardware info

yes | sudo apt install hardinfo

# install git

yes | sudo apt install git

# node.js

sudo apt install nodejs

