#!/bin/bash
useradd -M iamtrazy && echo "iamtrazy:i@mtrazy" | chpasswd
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
unzip ngrok-stable-linux-amd64.zip -d /usr/local/bin
chmod +x /usr/local/bin/ngrok
/usr/local/bin/ngrok authtoken 1hNbxLEqFed9ugmNXxkmzCD2lfC_3o76kjxQF2gGyqLh87HWh
echo "web_addr: $PORT" >> .ngrok2/ngrok.yml
/usr/local/bin/ngrok tcp 3389 > /dev/null 2>&1
