#!/usr/bin/env bash

printf "setting up wifi..."

# wpa_supplicant
sudo rsync --mkpath --checksum "$SETUP/config/wpa_supplicant-wlan0" "/etc/wpa_supplicant/"
sudo chmod 600 "/etc/wpa_supplicant/wpa_supplicant-wlan0"

# systemd
sudo rsync -a --checksum "$SETUP/config/wifi.service" "/usr/lib/systemd/system/"

printf "done - reboot required\n"
