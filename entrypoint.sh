#!/bin/bash
sudo apt-get update
sudo apt install apt-utils build-essential xorg xfce4 xfce4-goodies firefox-esr xrdp git wget -y
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
unzip ngrok-stable-linux-amd64.zip -d /usr/local/bin
xrdp > /dev/null 2>&1
ngrok authtoken 1hNbxLEqFed9ugmNXxkmzCD2lfC_3o76kjxQF2gGyqLh87HWh
ngrok tcp 3389
