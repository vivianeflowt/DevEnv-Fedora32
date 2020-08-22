#!/bin/bash

clear
sleep 1

echo " Gnome Extensions!"
echo " "
sleep 1
wait

echo " "
echo "- Update"
echo " "
sudo dnf update --refresh | sudo dnf upgrade -y | sudo dnf autoremove -y
wait
sleep 1
wait
echo " "
echo "Done!"
echo " "
sleep 3
wait
clear


echo "- Gnome Extensions Tools"
echo " "
sudo dnf install gnome-shell gnome-tweak-tool dconf-editor 
wait
sleep 1
wait
echo " "
echo "Done!"
echo " "
sleep 3
wait
clear

# Gnome Extensions : https://deepu.tech/my-beautiful-linux-development-environment/
echo "::: Gnome Extensions :::"
echo " "

# ---------------------------------------------------------------------------

echo "  https://extensions.gnome.org/extension/307/dash-to-dock/"
echo "  https://extensions.gnome.org/extension/15/alternatetab/"
echo "  https://extensions.gnome.org/extension/6/applications-menu/"
echo "  https://extensions.gnome.org/extension/779/clipboard-indicator/"
echo "  https://extensions.gnome.org/extension/8/places-status-indicator/"
echo "  https://extensions.gnome.org/extension/2/move-clock/"
echo "  https://extensions.gnome.org/extension/800/remove-dropdown-arrows/"
echo "  https://extensions.gnome.org/extension/657/shelltile/"
echo "  https://extensions.gnome.org/extension/1112/screenshot-tool/"
echo "  https://extensions.gnome.org/extension/906/sound-output-device-chooser/"
echo "  https://extensions.gnome.org/extension/7/removable-drive-menu/"
echo "  https://extensions.gnome.org/extension/1166/extension-update-notifier/"
echo "  https://extensions.gnome.org/extension/517/caffeine/"
echo "  https://extensions.gnome.org/extension/1128/hide-activities-button/"
echo " https://extensions.gnome.org/extension/97/coverflow-alt-tab/"

# ---------------------------------------------------------------------------

echo " "
