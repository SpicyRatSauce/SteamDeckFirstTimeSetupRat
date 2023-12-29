#!/bin/bash

# List of Flatpak application IDs
flatpak_apps=(
    org.mozilla.firefox
    com.google.Chrome
    com.github.tchx84.Flatseal
    it.mijorus.gearlever
    com.github.Matoking.protontricks
    net.davidotek.pupgui2
    org.prismlauncher.PrismLauncher
    com.heroicgameslauncher.hgl
    net.lutris.Lutris
    com.usebottles.bottles
    com.discordapp.Discord
    com.spotify.Client
    org.kde.krita
    org.darktable.Darktable
    # Add more application IDs as needed
)

# Function to install Flatpak applications
install_flatpak_apps() {
    for app_id in "${flatpak_apps[@]}"; do
        flatpak install -y $app_id
        if [ $? -eq 0 ]; then
            echo "Successfully installed: $app_id"
        else
            echo "Failed to install: $app_id"
        fi
    done
}

# Check if Flatpak is installed
if ! command -v flatpak &> /dev/null; then
    echo "Flatpak is not installed. Please install Flatpak first."
    exit 1
fi

# Install Flatpak applications
install_flatpak_apps
