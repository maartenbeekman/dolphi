#!/bin/bash

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get autoremove

# Download and install gps tools 
sudo apt-get install gpsd libgps20 python-gps -y

if [ ! -f pi-hubster/GPS_20121104_134730.log ]; then
    wget http://www.act-consult.net/Rodhern/FGPSLog/GPS_20121104_134730.log
fi

if [ ! -f pi-hubster/kplex_1.1-1_armhf.deb ]; then
    wget http://www.stripydog.com/download/kplex_1.1-1_armhf.deb
fi

sudo dpkg -i ./kplex_1.1-1_armhf.deb

# Download and install Apache webserver
# sudo apt-get install apache2
# sudo apt-get install php5 libapache2-mod-php5 -y

# ls /dev/pts
# nano /etc/kplex.conf, uncomment lines and change filename to /dev/pts/x
# sudo apt-get install nmap

# http://www.instructables.com/id/Turn-your-Raspberry-Pi-into-a-Portable-Bluetooth-A/step3/Install-prerequisite-packages/

# http://computers.tutsplus.com/articles/using-a-raspberry-pi-as-an-airplay-receiver--mac-54316

# nmea0183-signalk?
