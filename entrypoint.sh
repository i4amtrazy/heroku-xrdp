#!/bin/bash
sudo useradd -M iamtrazy && echo "iamtrazy:i@mtrazy" | chpasswd
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
unzip ngrok-stable-linux-amd64.zip -d /usr/local/bin
sudo chmod +x /usr/local/bin/ngrok
xrdp
/usr/local/bin/ngrok authtoken 1hNbxLEqFed9ugmNXxkmzCD2lfC_3o76kjxQF2gGyqLh87HWh
/usr/local/bin/ngrok tcp 3389 &
