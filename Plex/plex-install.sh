#!/bin/sh

# References
# https://pimylifeup.com/raspberry-pi-plex-server
# https://thepi.io/how-to-set-up-a-raspberry-pi-plex-server
# https://www.raspberrypi.org/forums/viewtopic.php?t=191999

sudo apt-get install apt-transport-https
wget -O - https://dev2day.de/pms/dev2day-pms.gpg.key | sudo apt-key add -
echo "deb https://dev2day.de/pms/ stretch main" | sudo tee /etc/apt/sources.list.d/pms.list
sudo apt-get update
# jessie or stretch - Raspbian version
sudo apt-get install -t stretch plexmediaserver-installer

sudo nano /etc/default/plexmediaserver
# Put this line in the file, without comments
#PLEX_MEDIA_SERVER_USER=pi

sudo service plexmediaserver restart

hostname -I
sudo nano /boot/cmdline.txt
#Put this line in the file, without comments
#ip=<YOUR IP>

sudo iptables -I INPUT -p tcp --dport 32400 -j ACCEPT
sudo iptables -L

sudo reboot

# Open <YOUR IP>:32400/web, add your media and enjoy!