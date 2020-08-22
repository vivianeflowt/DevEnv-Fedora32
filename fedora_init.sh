#!/bin/bash

clear
sleep 1

echo "Fedora 32 - Developer Environment"
echo " "

# Set Hostname
sudo hostnamectl set-hostname "fedora"
wait

# Initial Upgrade
sudo dnf update --refresh | sudo dnf upgrade -y | sudo dnf autoremove -y
wait

# Basics
sudo dnf install nano git wget curl tar gzip snapd flatpak unzip p7zip p7zip-plugins unrar gparted
wait
# sudo ln -s /var/lib/snapd/snap /snap
# wait
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

# Estação de Desenvolvimento Fedora
# sudo dnf update --refresh | sudo dnf upgrade -y | sudo dnf autoremove -y
# wait
# sudo dnf groupinstall "Desenvolvimento e Estação de Trabalho Criativa" --skip-broken --bugfix --enhancement --best --security --with-optional
# wait

# Vlc
sudo dnf update | sudo dnf upgrade -y | sudo dnf autoremove -y
wait
sudo dnf install vlc
wait

# VS Code
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
wait 
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
wait
sudo dnf update | sudo dnf upgrade -y | sudo dnf autoremove -y
wait
sudo dnf install code
wait 

# Chrome
sudo dnf install fedora-workstation-repositories
wait
sudo dnf config-manager --set-enabled google-chrome
wait
sudo dnf update | sudo dnf upgrade -y | sudo dnf autoremove -y
wait
sudo dnf install google-chrome-stable -y
wait

# Node.js
sudo dnf update | sudo dnf upgrade -y | sudo dnf autoremove -y
wait
sudo dnf install nodejs
wait

# Sqlite
sudo dnf update | sudo dnf upgrade -y | sudo dnf autoremove -y
wait
sudo dnf install sqlite
wait
sudo dnf install sqlite-devel sqlite-tcl sqlite-doc sqlitebrowser
wait

# MySQL Workbench
wget https://dev.mysql.com/get/mysql80-community-release-fc32-1.noarch.rpm
wait
sudo rpm -Uvh mysql80-community-release-fc32-1.noarch.rpm
wait
sudo dnf update | sudo dnf upgrade -y | sudo dnf autoremove -y
wait
sudo yum install mysql-workbench
wait

# PHP 7
sudo dnf update | sudo dnf upgrade -y | sudo dnf autoremove -y
wait
sudo dnf -y install php  php-cli php-fpm php-mysqlnd php-zip php-devel php-gd php-mcrypt php-mbstring php-curl php-xml php-pear php-bcmath php-json
wait
curl -sS https://getcomposer.org/installer | php
wait
sudo mv composer.phar /usr/local/bin/composer
wait
sudo chmod +x /usr/local/bin/composer
wait

# Python3
sudo dnf update | sudo dnf upgrade -y | sudo dnf autoremove -y
wait
sudo dnf install python3
wait

# .NET Sdk
sudo dnf update | sudo dnf upgrade -y | sudo dnf autoremove -y
wait
sudo dnf install dotnet-sdk-3.1
wait

# Mongodb Compass
wget https://downloads.mongodb.com/compass/mongodb-compass-1.21.2.x86_64.rpm
wait
sudo yum install mongodb-compass-1.21.2.x86_64.rpm
wait

# Snaps
sudo snap install heroku --classic 
wait
sudo snap install discord
wait 
sudo snap install zoom-client
wait


# VirtualBox
# https://tecadmin.net/install-oracle-virtualbox-on-fedora/

# Fedore Repositories Folder
# cd /etc/yum.repos.d/

# List all dnf groups
# sudo dnf group list
# sudo dnf groupinstall "Administration Tools"
# sudo dnf groupinstall "Ferramentas do sistema"
# sudo dnf groupinstall "Gerenciamento de Contêiner."
# sudo dnf groupinstall "Fedora Eclipse" --skip-broken
# sudo dnf groupinstall "Gerenciamento por linha de comando"
# sudo dnf groupinstall "Escritório/Produtividade"
# sudo dnf groupinstall "Internet em modo texto"
# sudo dnf groupinstall "Gerenciadores de janelas"
# sudo dnf groupinstall "Internet em modo gráfico"

