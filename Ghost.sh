#!/bin/bash
# This script installs Ghost Framework for Linux systems
echo "This is a simple script to install Ghost Framework in Kali Linux"
echo "Make sure to use the script only in Kali Linux and as root !"
echo "Checking if you are root user..."
echo " "
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi
echo "We are root !"
figlet Installing
echo " "
echo " "
cd /root/
sudo apt-get upgrade --fix-missing -y
clear
git clone https://github.com/EntySec/ghost
cd ghost/
chmod +x *
./install.sh
sudo apt install adb
clear
echo " "
echo " "
echo "The installation was successful !"
echo "You can run ghost framework by typing ghost in the terminal"
echo "This script was made by @snjm.exe < Follow me on Instagram !"
echo "Thank you for using my script !"
exit