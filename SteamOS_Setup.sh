#!/bin/sh

# This Script will preform first time setup on Steam Deck with SteamOS 3.0+
echo Running Steam Deck automated setup!
echo "Press CTRL + C to cancel!"

# Count down from 10
secs=$((10))
while [ $secs -gt 0 ]; do
   echo -ne "$secs\033[0K\r"
   sleep 1
   : $((secs--))
done


# Set root password
passwd
expect "New password:" { send "1232\r" }
expect "Retype new password:" { send "1232\r" }
# Wait for command to finish
expect eof


# Disable readonly file system
sudo steamos-readonly disable


# Disable wifi power management
# Edit file if exists or make new one if not
if test -f /etc/NetworkManager/conf.d/default-wifi-powersave-on.conf; then
  sudo sed -i 's/3/2/' /etc/NetworkManager/conf.d/default-wifi-powersave-on.conf
else
  sudo echo -e "[connection]\nwifi.powersave = 3" >> /etc/NetworkManager/conf.d/default-wifi-powersave-on.conf
# Restarting Network Manager for changes to take effect
sudo systemctl restart NetworkManager

echo "Wifi power management disabled"


echo "Starting software install!"

# Install useful software using flatpak
flatpak install flathub org.mozilla.firefox com.google.Chrome com.github.tchx84.Flatseal it.mijorus.gearlever com.github.Matoking.protontricks net.davidotek.pupgui2 org.prismlauncher.PrismLauncher com.heroicgameslauncher.hgl net.lutris.Lutris com.usebottles.bottles com.discordapp.Discord com.spotify.Client org.kde.krita org.darktable.Darktable -y  

echo "Software installed!"



# Download And install Cryoutils
echo "Downloading & running CryoUtils installer!"
curl https://raw.githubusercontent.com/CryoByte33/steam-deck-utilities/main/install.sh | bash -s --
echo "CryoUtils installed!"


# Download and install Decky Loader
echo "Downloading & running Decky Loader installer!"
curl https://raw.githubusercontent.com/SteamDeckHomebrew/decky-loader/e3d72b60823014317fe56a51cbfffd4bb7f33453/dist/install_release.sh | bash -s --
echo "Decky Loader installed!"


echo "Setup finished, go add desktop programs to Steam by right clicking them in the applications menu (bottom left) and selecting "Add to Steam""





