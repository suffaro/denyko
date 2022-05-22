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

# install hardware info

yes | sudo apt install hardinfo

# install git

yes | sudo apt install git

