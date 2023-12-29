#!/bin/sh

# This Script will preform first time setup on Steam Deck with SteamOS 3.0+
echo Running Steam Deck automated setup!
echo "Press CTRL + C to cancel!"
sleep 10
echo 10
echo 9
echo 8
echo 7
echo 6
echo 5
echo 4
echo 3
echo 2
echo 1
echo "Starting software install!"

# Add Flatpak repo to User
#flatpak remote-add --if-not-exists --user flathub https://dl.flathub.org/repo/flathub.flatpakrepo -y
# Install useful software using flatpak
# Basic Utilites
flatpak install flathub org.mozilla.firefox -y
flatpak install flathub com.google.Chrome -y
flatpak install flathub com.github.tchx84.Flatseal -y
flatpak install flathub it.mijorus.gearlever -y
# Gaming tools
flatpak install flathub com.github.Matoking.protontricks -y
flatpak install flathub net.davidotek.pupgui2 -y
flatpak install flathub org.prismlauncher.PrismLauncher -y
flatpak install flathub com.heroicgameslauncher.hgl -y
flatpak install flathub net.lutris.Lutris -y
flatpak install flathub com.usebottles.bottles -y
# Social & Music
flatpak install flathub com.discordapp.Discord -y
flatpak install flathub com.spotify.Client -y
# Photo Editing
flatpak install flathub org.kde.krita -y
flatpak install flathub org.darktable.Darktable -y

echo "Software installed!"


echo "Downloading & running CryoUtils installer!"
curl https://raw.githubusercontent.com/CryoByte33/steam-deck-utilities/main/install.sh | bash -s --
echo "CryoUtils installed!"

echo "Downloading & running Decky Loader installer!"
curl https://github.com/SteamDeckHomebrew/decky-installer/releases/latest/download/user_install_script.sh | bash -s --
echo "Decky Loader installed!"


echo "Setup finished, go add desktop programs to Steam by right clicking them in the applications menu (bottom left) and selecting "Add to Steam""

exit O




