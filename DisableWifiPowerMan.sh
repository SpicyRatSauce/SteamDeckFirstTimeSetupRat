#!/bin/bash

# Disable readonly file system
sudo steamos-readonly disable

# Disable wifi power management
if test -f /etc/NetworkManager/conf.d/default-wifi-powersave-on.conf; then
  sudo sed -i 's/3/2/' /etc/NetworkManager/conf.d/default-wifi-powersave-on.conf
else
  sudo echo -e "[connection]\nwifi.powersave = 3" >> /etc/NetworkManager/conf.d/default-wifi-powersave-on.conf

sudo systemctl restart NetworkManager

echo "Wifi power management disabled"
