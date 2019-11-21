#!/bin/bash
# dead1 AutoWifi v2.0
# Author: dead1
# Version: 2.0
RET=$PWD
echo "**************** -=[   Installing AutoWifi...    ]=- ****************"
echo "**************** -=[ Configurting Directories... ]=- ****************"
# move folders to opt folder for ease of collection and removal, and set privs
sudo mv autowifi/ /opt/
sudo mv hcxdumptool/ /opt/
sudo mv hcxtools/ /opt/
sudo chmod 755 -R /opt/autowifi/
sudo chmod 755 -R /opt/hcxtools/
sudo chmod 755 -R /opt/autowifi/
sleep 2s
echo "[ *** DONE **** ]"
echo ""
echo "**************** -=[ Unzipping Wordlist... ]=- ****************"
sudo unzip /opt/autowifi/wordlists/WPAmain.zip
sleep 2s
echo "[ *** DONE **** ]"
echo ""
echo "**************** -=[ Creating AutoWifi Shortcut... ]=- ****************"
# move deafi to /bin/ and rename it autowifi, and give it priv. this program needs
# to be run as root to interact with interfaces
sudo cp deadfi /usr/bin/autowifi
sudo chmod 755 /usr/bin/autowifi
sleep 2s
echo "[ *** DONE **** ]"
echo ""
echo "**************** -=[ Installing Dependencies... ]=- ****************"
# using trustesd depositories, download the required packages
sudo apt install -y hashcat mdk3 aircrack-ng libcurl4-openssl-dev libssl-dev zlib1g-dev
echo "[ *** DONE **** ]"
echo ""
echo "**************** -=[ Installing HCXDump Tools... ]=- ****************"
# installs hcxdumptool, there is a link to the repository on the readme.
sleep 2s
cd /opt/hcxdumptool/
sudo make
sudo make install
echo "[ *** DONE **** ]"
echo ""
echo "**************** -=[ Installing HCX Tools... ]=- ****************"
# installs hcxtools, there is a link to the repository on the readme. 
sleep 2s
cd /opt/hcxtools/
sudo make
sudo make install
echo "[ *** DONE **** ]"
echo ""
echo "**************** -=[ Cleaning Up Installation Files... ]=- ****************"
# delete github place.holders for directory creation, and return original installation folder, 
# everything exists in /opt/autowifi/ now, and /opt/hcxtools /opt/hcxdumptool.
sudo rm /opt/autowifi/airo/place.holder
sudo rm /opt/autowifi/handshakes/place.holder
sudo rm /opt/autowifi/loot/place.holder
sudo rm /opt/autowifi/pmk/place.holder
sudo rm -rf $RET
cd $HOME
sleep 2s
echo "[ *** DONE **** ]"
echo ""
echo "*******************************************************************"
echo "|                        dead1's AutoWifi                         |"
echo "|                                                                 |"
echo "|                  -= Enjoy. Use Responsibly =-                   |"
echo "|      I am not responsible for anything you do with this,        |"
echo "| I am not responsible for anything that happens from using this. |"
echo "|               ****** USE AT YOUR OWN RISK ******                |"
echo "|              PLEASE READ THE README.md ON GITHUB                |"
echo "|                    FOR INSTRUCTIONS ON USE                      |"
echo "|                                                                 |"
echo "|           autowifi and Capture files can be found in:           |"
echo "|                          /opt/autowifi                          |"
echo "|                                                                 |"
echo "|                      TO VIEW README FILE                        |"
echo "|                             TYPE:                               |"
echo "|                     cat /opt/autowifi/README                    |"
echo "|                                                                 |"                        
echo "|               Uninstall Script for EVERYTHING just              |"
echo "|          installed exists at: /opt/autowifi/uninstall.sh        |"
echo "|                                                                 |"
echo "|                     To use autowifi type:                       |"
echo "|                           autowifi                              |"
echo "|                       (requires root)                           |"
echo "|                                                    ... dead1.   |"
echo "*******************************************************************"
echo ""


