#!/bin/bash

clear
sleep 0.5
printf "Start...\n" & sleep 0.5 & Wait
echo " "

# Set Default Hostname
sudo hostnamectl set-hostname "fedora"

# Full Update
sudo dnf update --refresh | sudo dnf upgrade -y | sudo dnf autoremove -y

# Basics
sudo dnf install nano git wget curl tar gzip snapd flatpak unzip p7zip p7zip-plugins gparted
git config --global user.email "vivianeflowt@gmail.com"
git config --global user.name "vivianeflowt"

sudo dnf groupinstall "Development Tools"
sudo dnf groupinstall "Administration Tools"
sudo dnf groupinstall "Ferramentas do sistema"
sudo dnf groupinstall "Gerenciamento de Contêiner."

sudo dnf install sqlite sqlite-devel sqlite-tcl sqlite-doc sqlitebrowser 

sudo dnf install nodejs
sudo dnf install nodejs-sqlite3
sudo dnf install nodejs-yarn
# sudo npm install -g browser-sync nodemon express mongoose grunt pm2 passport react pug ejs mysql mysql2 jslint webpack body-parser async dotenv mongodb nodemailer request socket.io uuid 
sudo dnf update | sudo dnf upgrade -y | sudo dnf autoremove -y

sudo dnf install php  php-cli php-fpm php-mysqlnd php-zip php-devel php-gd php-mcrypt php-mbstring php-curl php-xml php-pear php-bcmath php-json
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
sudo chmod +x /usr/local/bin/composer

sudo dnf update | sudo dnf upgrade -y | sudo dnf autoremove -y

sudo dnf install python3

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf update --refresh | sudo dnf upgrade -y | sudo dnf autoremove -y
sudo dnf install code
wait 

# Chrome
sudo dnf install fedora-workstation-repositories
sudo dnf config-manager --set-enabled google-chrome
sudo dnf update --refresh | sudo dnf upgrade -y | sudo dnf autoremove -y
sudo dnf install google-chrome-stable -y

sudo dnf update --refresh | sudo dnf upgrade -y | sudo dnf autoremove -y
sudo dnf install gnome-shell gnome-tweak-tool dconf-editor 

echo " " 
echo "::: Gnome Extensions ::: https://extensions.gnome.org :::"
echo " " 
echo "#:: Desativar Gnome-Keyring :  sudo rm /usr/lib64/pkcs11/gnome-keyring-pkcs11.so  ::#"
echo " " 
echo "DONE!" 
echo " " 





