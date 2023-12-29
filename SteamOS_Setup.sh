#!/bin/sh

# This Script will preform first time setup on Steam Deck with SteamOS 3.0+
echo Running Steam Deck automated setup!
echo "Press CTRL + C to cancel!"

# Count down from 5
secs=$((5))
while [ $secs -gt 0 ]; do
   echo -ne "$secs\033[0K\r"
   sleep 1
   : $((secs--))
done


# Download And install Cryoutils
echo "Downloading & running CryoUtils installer!"
curl https://raw.githubusercontent.com/CryoByte33/steam-deck-utilities/main/install.sh | bash -s --
wait $!
echo "CryoUtils installed!"



# Download and install Decky Loader
echo "Downloading & running Decky Loader installer!"
curl https://raw.githubusercontent.com/SteamDeckHomebrew/decky-loader/e3d72b60823014317fe56a51cbfffd4bb7f33453/dist/install_release.sh | bash -s --
wait $!
echo "Decky Loader installed!"



# Download and run software install script
echo "Installing Software!"
curl https://raw.githubusercontent.com/SpicyRatSauce/SteamDeckFirstTimeSetupRat/main/InstallSoftware.sh | bash -s --
wait $!
echo "Software Installed! Setup finished!"



# Download and run Wifi Power Management Disable Script
echo "Disabling wifi power managerment!"
curl https://raw.githubusercontent.com/SpicyRatSauce/SteamDeckFirstTimeSetupRat/main/DisableWifiPowerMan.sh | bash -s --
wait $!
echo "Software Installed! Setup finished!"
