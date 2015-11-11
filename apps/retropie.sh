#!/bin/sh

if ! [ $ARCH = arm ]
  then whiptail --msgbox "You need an ARM CPU to setup RetroPie" 8 48
  break
fi
$install git
# Download the latest RetroPie setup script
git clone --depth=1 https://github.com/RetroPie/RetroPie-Setup.git

# Execute the script
cd RetroPie-Setup
sudo ./retropie_setup.sh

whiptail --msgbox "RetroPie successfully installed!

You might need to reboot your Raspberry" 12 60
