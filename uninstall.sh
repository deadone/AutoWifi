#!/bin/bash
# dead1 AutoWifi v2.0
# Author: dead1
# Version: 2.0
RET=$PWD
echo "AutoWifi Uninstall"
echo "Are you sure you want to unistall everything?"
echo "(autowifi, hcxdumptool, hcxtools)"
echo " Y / N   <- uppercase"
read ANS

if [ $ANS == "Y" ]
then
echo "-=[   Uninstalling AutoWifi and Friends    ]=-"
sudo rm -rf /opt/autowifi       # removing folders
sudo rm -rf /opt/hcxtools/
sudo rm -rf /opt/hcxdumptool/
sudo rm /usr/local/bin/autowifi # removing shortcuts
sudo rm /usr/local/bin/hcxdumptool
sudo rm /usr/local/bin/hcxessidtool
sudo rm /usr/local/bin/hcxhash2cap
sudo rm /usr/local/bin/hcxhashcattool
sudo rm /usr/local/bin/hcxmactool
sudo rm /usr/local/bin/hcxpcaptool
sudo rm /usr/local/bin/hcxpioff
sudo rm /usr/local/bin/hcxpmkidtool
sudo rm /usr/local/bin/hcxpsktool
sudo rm /usr/local/bin/hcxwltool
sudo rm /usr/local/bin/whoismac
sudo rm /usr/local/bin/wlancap2wpasec
sudo rm /usr/local/bin/wlancow2hcxpmk
sudo rm /usr/local/bin/wlanhc2hcx
sudo rm /usr/local/bin/wlanhcx2john
sudo rm /usr/local/bin/wlanhcx2ssid
sudo rm /usr/local/bin/wlanhcxcat
sudo rm /usr/local/bin/wlanhcxinfo
sudo rm /usr/local/bin/wlanhcxmnc
sudo rm /usr/local/bin/wlanjohn2hcx
sudo rm /usr/local/bin/wlanpmk2hcx
sudo rm /usr/local/bin/wlanwkp2hcx
sudo apt remove
echo "[ DONE ]"
fi

if [ $ANS != "Y" ]
then
echo "*** Uninstall Aborted."
exit
fi
