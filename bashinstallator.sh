#!/bin/bash

# write chmod u+x "filename"
sudo apt update && sudo apt upgrade

# discord install
yes | sudo apt install gdebi-core wget

wget -O ~/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
yes | sudo gdebi ~/discord.deb

# spotify and telegram install

sudo apt install telegram-desktop
sudo rm /etc/apt/preferences.d/nosnap.pref
sudo apt update
sudo apt install snapd

snap find spotify

yes | sudo snap install spotify


# install atom

wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sudo apt-get update

yes | sudo apt install atom

# install hardware info

yes | sudo apt install hardinfo

# install git

yes | sudo apt install git

# install pycharm

yes | sudo snap install pycharm-professional --classic

# install vim

yes | sudo apt install vim



# other stuff

sudo apt install unrar

yes | sudo apt install libreoffice

yes | sudo apt install okular

yes | sudo apt install python3-pip

# install steam

#sudo dpkg --add-architecture i386
#sudo apt update
#yes | sudo apt install wget gdebi-core libgl1-mesa-glx:i386
#wget -O ~/steam.deb http://media.steampowered.com/client/installer/steam.deb
#sudo gdebi ~/steam.deb

# install google chrome

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# install brave

yes | sudo apt install apt-transport-https curl

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

yes | sudo apt install brave-browser

# install obsproject

sudo add-apt-repository ppa:obsproject/obs-studio

yes | sudo apt install obs-studio
