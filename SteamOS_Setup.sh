#!/bin/sh

# This Script will preform first time setup on Steam Deck with SteamOS 3.0+
echo Running Steam Deck automated setup!
sleep 5

# Make installer scripts able to run!
chmod +x InstallDeckyLoaderRelease.sh
chmod +x InstallCryoUtils.sh

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

cat InstallCryoUtils.sh
echo Installing CryoUtils!
sh ./InstallCryoUtils.sh

cat InstallDeckyLoaderRelease.sh
echo Installing DeckyLoader!
sh ./InstallDeckyLoaderRelease.sh


