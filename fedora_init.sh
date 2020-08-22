#!/bin/bash

clear
sleep 1

echo "Fedora 32 - Developer Environment"
echo " "

sudo hostnamectl set-hostname "fedora"
wait

# Initial Upgrade
sudo dnf update --refresh | sudo dnf upgrade -y | sudo dnf autoremove -y
wait

# Basics
sudo dnf install nano git wget curl tar gzip snapd flatpak 
wait
git config --global user.email "vivianeflowt@gmail.com"
wait
git config --global user.name "vivianeflowt"
wait

# Gnome Tweak Tool
sudo dnf install gnome-tweak-tool dconf-editor
wait

# Dev Tools Group
sudo dnf update | sudo dnf upgrade -y | sudo dnf autoremove -y
wait
sudo dnf groupinstall "Development Tools"
wait

# Vlc
sudo dnf install vlc
wait

# Install Chrome
sudo dnf install fedora-workstation-repositories
wait
sudo dnf config-manager --set-enabled google-chrome
wait
sudo dnf install google-chrome-stable -y
wait







# Fedore Repositories Folder
# cd /etc/yum.repos.d/
