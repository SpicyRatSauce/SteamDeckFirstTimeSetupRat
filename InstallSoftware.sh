#!/bin/bash

echo "Starting software install!"

# Install useful software using flatpak
flatpak install flathub org.mozilla.firefox com.google.Chrome com.github.tchx84.Flatseal it.mijorus.gearlever com.github.Matoking.protontricks net.davidotek.pupgui2 org.prismlauncher.PrismLauncher com.heroicgameslauncher.hgl net.lutris.Lutris com.usebottles.bottles com.discordapp.Discord com.spotify.Client org.kde.krita org.darktable.Darktable -y

wait

echo "Software installed!"
