#!/bin/bash

clear
sleep 1

echo "Fedora -> Run Script"
echo " "

# Initial Upgrade
sudo dnf update --refresh | sudo dnf upgrade -y | sudo dnf autoremove -y
wait
sleep 5
wait
clear
echo " "

# ----------------------------------------------------
#               Put Script Here 
# ----------------------------------------------------



# ----------------------------------------------------
echo " "
sleep 1

echo " "
echo " Done!"
echo " "

# Fedore Repositories Folder
# cd /etc/yum.repos.d/

