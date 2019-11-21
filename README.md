AutoWifi - dead1
Bash Script to Manage WiFi Auditting
EAPOL Capture and PMK Capture, with basic
file management meant to simplify analyzing
and moving captures from tool to tool.

I made it to simplify a project, so I'm sure it has its flaws.
Im just trying to share it with my friends.

Required Dependencies: 
* hashcat
* mdk3
* aircrack-ng
* hcxdumptool
* hcxtools

If you run ./install.sh
It will check and install any missing dependencies.
(Debian systems only, uses apt.)

Comes with a built in wordlist, but can easily be changed
by using the settings option and placing the wordlist in
the /opt/autowifi/wordlists/ folder.

Setting Up:
When you start autowifi, first take note of "CONFIGURED". If
it says NO!, select option [5] to put the interface correctly
into monitor mode, and will allow the appropriate processes. If
you wish to stop using the program, use option [6] to reset
everything back to normal. 

If you plan on using de-auth packets, it never hurts to randomize your 
MAC address. If you use option [7] it will correctly change and 
randomize your NIC's MAC address. If and when you want to return to 
your original MAC address, just use option [8]

OPTION [1] - Focused capture. [EAPOL]
OPTION [2] - Passive capture. [EAPOL + PMK]

Options:
[1] - EAPOL Capture. Will open a airodump capture on all channels
   so that you can see which channel your target(s) are on. Press 
   Ctrl+C to close the window. Input the channel, and the name you
   want to give the capture file. You will then be asked if you want 
   to run the Cannon. This is mkd3 packets sending De-Auth packets at
   a very high rate in order to force handshakes. Be advised, this is 
   ILLEGAL unless authorized to do so. Press Ctrl+C when you have collected
   the handshake you want. It will ask you if you want to format the capture
   for hashing. Click yes if you wish to prepare the capture for your current
   computer or another hashing machine.

 [2] - PMK + EAPOL Capture. Selecting this option will open a passive capture
   and doesnt cause any de-auth signals. It will collect PMK's and WPA handshakes.
   WPA's provide more information when cracked, but PMK's are easier to obtain. After
   you have collected the handshakes/pmks that you want, you can stop the capture
   by pressing Ctrl+C. You will then be able to see how many of each type you collected.
   I generally only format EAPOL.

 [3] - Incase you accidently close the cannon when you are collecting with optioin [1],
   this will restart the mdk3 cannon.

 [4] - The MAIN interface will tell you how many files of each type of capture you have
   and this is the option to use when you want to crack them on the current computer. It
   will open up hashcat, ask you what time, ask you which file (it will show you the
   the choices), and ask you if you want to use any rules (start with saying no).
   Hashcat will start, and inform you if or if it isnt sucessful. GOOD LUCK!
   
 [9] - Use to make changes to the program; wordlists, interfaces, and delete all 
   files of captures.

 [XX] - I added an option to kill the computer, meaning shut it down. If you
   want to shut your computer down quickly, this is the best way.
