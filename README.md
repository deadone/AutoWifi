##########################################<br>
<b>WITH RECENT UPDATES TO KALI WITH XFCE,<br>
THIS SCRIPT IS NOT WORKING PROPERLY.<br>
I WILL TRY TO FIX THE FUNCTIONS SHORTLY.</b><br>
##########################################<br>

<b>AutoWifi - by dead1</b>

<b>WiFi Auditing</b><br>
Bash script for analyzing and collecting EAPOL captures and PMK captures, with basic file management meant to simplify analyzing
and moving captures from tool to tool.<br>
<i>AKA: Gathering and cracking wifi passwords.</i>

I made it to simplify a project, so I'm sure it has flaws.<br>
Im just trying to share it with my friends.<br><br>
Tested and created on Kali<br>
Can only be used in a VM if you're using a USB adapter you can passthrough.<BR>
Utilizes Aircrack-ng and HCXDumptool (https://github.com/ZerBea/) for captures.<br>
<b>REQUIRES A WIRELESS CARD OR ADAPTER</b><br>

<b>To download and install type:</b><br>
<i>Install script uses apt, Kali/Debian systems only</i> <br>
git clone https://github.com/deadone/autowifi.git<br>
cd autowifi<br>
chmod 700 install.sh<br>
./install.sh<br>
autowifi<br><br>
<b>It will check and install any missing dependencies/tools.<br>
******* Uninstall script can be found in /opt/autowifi/uninstall.sh *******</b>

You can install dependencies yourself if you dont wish to use the install script.<br>
You can open the program by going to folder /opt/autowifi/, and typing: ./main<br><br>
<b>Required Tools:<i>(installed with script)</i></b> 
* hashcat (https://github.com/hashcat)
* mdk3 (https://github.com/aircrack-ng/mdk3)
* aircrack-ng (https://www.aircrack-ng.org/)
* hcxdumptool (https://github.com/ZerBea/)
* hcxtools (https://github.com/ZerBea/)

Comes with a built in wordlist, and Kali comes with a built in version of
rockyou.txt, copy any other desired wordlists in '/wordlists' directory.

<b>Setting Up:</b>
When you start autowifi, first take note of <b>"CONFIGURED"</b>. If
it says NO!, select option <b>[5]</b> to put the interface correctly
into monitor mode, and will allow the appropriate processes. If
you wish to stop using the program, use option <b>[6]</b> to reset
everything back to normal. 

If you plan on using de-auth packets, it never hurts to randomize your 
MAC address. If you use option <b>[7]</b> it will correctly change and 
randomize your NIC's MAC address. If and when you want to return to 
your original MAC address, use option <b>[8]</b>

<b>OPTION [1]</b> - Focused capture. <b>[EAPOL]</b>

<b>OPTION [2]</b> - Passive capture. Sometimes takes a minute to grab something.<b>[EAPOL + PMK]</b>

<b>If you use the install script captures will be saved in /opt/autowifi/handshakes & /opt/autowifi/pmk</b>

<b>Options:</b>

<b>[1]</b> - EAPOL Capture. Will open a airodump capture on all channels
   so that you can see which channel your target(s) are on. Press 
   Ctrl+C to close the window. Input the channel, and the name you
   want to give the capture file. You will then be asked if you want 
   to run the Cannon. This is mkd3 packets sending De-Auth packets at
   a very high rate in order to force handshakes. Be advised, this is 
   ILLEGAL unless authorized to do so. Press Ctrl+C when you have collected
   the handshake you want. It will ask you if you want to format the capture
   for hashing. Click yes if you wish to prepare the capture for your current
   computer or another hashing machine.

 <b>[2]</b> - PMK + EAPOL Capture. Selecting this option will open a passive capture
   and doesnt cause any de-auth signals. It will collect PMK's and WPA handshakes.
   WPA's provide more information when cracked, but PMK's are easier to obtain. After
   you have collected the handshakes/pmks that you want, you can stop the capture
   by pressing Ctrl+C. You will then be able to see how many of each type you collected.
   I generally only format EAPOL.

 <b>[3]</b> - Incase you accidently close the cannon when you are collecting with optioin [1],
   this will restart the mdk3 cannon.

 <b>[4]</b> - The MAIN interface will tell you how many files of each type of capture you have
   and this is the option to use when you want to crack them on the current computer. It
   will open up hashcat, ask you what time, ask you which file (it will show you the
   the choices), and ask you if you want to use any rules (start with saying no).
   Hashcat will start, and inform you if or if it isnt sucessful. GOOD LUCK!
   
 <b>[9]</b> - Use to make changes to the program; wordlists, interfaces, and delete all 
   files of captures.

 <b>[XX]</b> - I added an option to kill the computer, meaning shut it down. If you
   want to shut your computer down quickly, this is the best way.
