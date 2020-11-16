#!/bin/bash
export TERM=xterm
clear
echo "Created by Harrison Haviland-Longo, The YeetMaster, 2020"
startTime=$(date +"%s")
set -e
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade
disable ctrl-alt-delete
printTime "updated and upgraded software"q
echo "  
 ▄████████ ▄██   ▄   ▀█████████▄     ▄████████    ▄████████         ▄█   ▄█▄  ▄█   ▄█        ▄█          ▄████████    ▄████████ 
███    ███ ███   ██▄   ███    ███   ███    ███   ███    ███        ███ ▄███▀ ███  ███       ███         ███    ███   ███    ███ 
███    █▀  ███▄▄▄███   ███    ███   ███    █▀    ███    ███        ███▐██▀   ███▌ ███       ███         ███    █▀    ███    ███ 
███        ▀▀▀▀▀▀███  ▄███▄▄▄██▀   ▄███▄▄▄      ▄███▄▄▄▄██▀       ▄█████▀    ███▌ ███       ███        ▄███▄▄▄      ▄███▄▄▄▄██▀ 
███        ▄██   ███ ▀▀███▀▀▀██▄  ▀▀███▀▀▀     ▀▀███▀▀▀▀▀        ▀▀█████▄    ███▌ ███       ███       ▀▀███▀▀▀     ▀▀███▀▀▀▀▀   
███    █▄  ███   ███   ███    ██▄   ███    █▄  ▀███████████        ███▐██▄   ███  ███       ███         ███    █▄  ▀███████████ 
███    ███ ███   ███   ███    ███   ███    ███   ███    ███        ███ ▀███▄ ███  ███▌    ▄ ███▌    ▄   ███    ███   ███    ███ 
████████▀   ▀█████▀  ▄█████████▀    ██████████   ███    ███        ███   ▀█▀ █▀   █████▄▄██ █████▄▄██   ██████████   ███    ███ 
                                                 ███    ███        ▀              ▀         ▀                        ███    ███ "
            
     

if [[ $EUID -ne 0 ]]
then
  echo Stop being a silly goose and run me as root
  exit
fi
printTime "Script is being run as root, unless its not, then I guess im wrong."

printTime "The current OS is Linux Ubuntu, duh."
unalias -a
chown -R root:root /etc/apache2
	chown -R root:root /etc/apache
printTime "apache secured"

find / -name '*.mp3' -type f -delete
find / -name '*.mov' -type f -delete
find / -name '*.mp4' -type f -delete
find / -name '*.avi' -type f -delete
find / -name '*.mpg' -type f -delete
find / -name '*.mpeg' -type f -delete
find / -name '*.flac' -type f -delete
find / -name '*.m4a' -type f -delete
find / -name '*.flv' -type f -delete
find / -name '*.ogg' -type f -delete
find /home -name '*.gif' -type f -delete

printTime "media files deleted, but not jpg or png"

sudo passwd -l root
sudo /usr/lib/lightdm/lightdm-set-defaults -l false
apt-get install ufw -y
sudo ufw enable
sudo ufw allow 22

printTime "root login has been disabled"
printTime "guest login has been disabled"
printTime "firewall is enabled and port 22 is available for ssh"

sudo apt-get install openssh-client

apt-get purge netcat -y -qq
apt-get purge netcat-openbsd -y -qq
apt-get purge netcat-traditional -y -qq
apt-get purge ncat -y -qq
apt-get purge pnetcat -y -qq
apt-get purge socat -y -qq
apt-get purge sock -y -qq
apt-get purge socket -y -qq
apt-get purge sbd -y -qq
rm /usr/bin/nc

printTime "Netcat and all other instances have been killed."

apt-get purge john -y -qq
apt-get purge john-data -y -qq

printTime "John the Ripper has been killed."

apt-get purge hydra -y -qq
apt-get purge hydra-gtk -y -qq

printTime "Hydra has been killed."

apt-get purge aircrack-ng -y -qq

printTime "Aircrack-NG has been killed."

apt-get purge fcrackzip -y -qq

printTime "FCrackZIP has been killed."

apt-get purge lcrack -y -qq

printTime "LCrack has been killed."

apt-get purge ophcrack -y -qq
apt-get purge ophcrack-cli -y -qq

printTime "OphCrack has been killed."

apt-get purge pdfcrack -y -qq
clear
printTime "PDFCrack has been killed."

apt-get purge pyrit -y -qq

printTime "Pyrit has been killed."

apt-get purge rarcrack -y -qq

printTime "RARCrack has been killed."

apt-get purge sipcrack -y -qq
printTime "SipCrack has been killed."

apt-get purge irpas -y -qq
clear
printTime "IRPAS has been killed."


dpkg -l | egrep "crack|hack" >> ~/Desktop/Script.log

apt-get purge logkeys -y -qq

printTime "LogKeys has been killed."

apt-get purge zeitgeist-core -y -qq
apt-get purge zeitgeist-datahub -y -qq
apt-get purge python-zeitgeist -y -qq
apt-get purge rhythmbox-plugin-zeitgeist -y -qq
apt-get purge zeitgeist -y -qq
printTime "Zeitgeist has been killed."

apt-get update -qq
apt-get upgrade -qq
apt-get dist-upgrade -qq
printTime "Ubuntu OS has checked for updates."

apt-get autoremove -y -qq
apt-get autoclean -y -qq
apt-get clean -y -qq
printTime "Unused packages have been killed."

echo "Make sure update settings arent hecked up."
update-manager

apt-get update
apt-get upgrade openssl libssl-dev
apt-cache policy openssl libssl-dev
printTime "OpenSSL heart bleed bug has been killed, absolutely poggers!"

sudo apt-get update && sudo apt-get upgrade


echo "Yoinking Clamav and scanning for viruses"
sudo apt-get install clamav
freshclam
clamscan -r /home


printTime "CyberPatriot Officially Yoinked."

fi
done
