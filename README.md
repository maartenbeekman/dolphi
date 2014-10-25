Hubster
======

Hubster is an open project, aiming to build a device which gathers all sensoric data, irrespective of its manufacturer, on a yacht and broadcasts to personal devices such as smart phones, tablets and smart watches.

For more information about the Hubster project, please visit the project wiki at https://github.com/maartenbeekman/pi-hubster/wiki

At the moment of writing this, no code has been submitted yet. Please follow the (draft) instructions to set up a Hubster project:

Requirements
============
- Raspberry Pi or Raspberry (model A, B or B+) and power supply
- SD card (8GB is recommended)
- Raspberry compatible Bluetooth dongle
- Serial to USB converter with NMEA output on instrument (if you don't have instruments available to test, you can emulate the NMEA input)

(Draft) Instructions
====================
## 1. Download and install Raspbian on a Raspberry Pi
Download and install the latest version of Raspbian at http://www.raspberrypi.org/downloads/ and prepare the SD disk. At the moment of writing, I am using Debian Wheezy from September 2014.

## 2. Basic Raspbian configuration
Start up the Raspberry Pi with the prepared SD card, open a terminal, find the Raspberry Pi's IP address and SSH into the machine. Do basic Raspbian configuration
```
sudo raspi-config
```
Change the default password, chang the hostname into Hubster, the local timezone to your location and reboot the Raspberry Pi.

## 3. Set up Hubster
```
git clone https://github.com/maartenbeekman/pi-hubster.git
chmod 775 pi-hubster/setup_hubster.sh
./pi-hubster/setup_hubster
```
Download a sample GPS log file. 
```
wget http://www.act-consult.net/Rodhern/FGPSLog/GPS_20121104_134730.log
```

ls /dev/pts


## 5. Set up fake GPS connection (until you have real connection on a yacht) using a NMEA logfile

```
sudo apt-get install gpsd, libgps20 and python-gps
add user pi to dialout group
sudo modprobe ipv6
```
Please not that probing ipv6 is a necessary evil. Not sure yet how to get rid of the ipv6 error message if the module is not loaded.

## 6. Install and setup kplex to multiplex
```
wget kplex
```
Find which pseudo TTY is used by gpsfake (1 and 2 in this case).
```
ls /dev/pts
gpsfake -p xxx.gps
ls /dev/pts
wget http://www.stripydog.com/download/kplex_1.1-1_armhf.deb
sudo dpkg -i ./kplex_1.1-1_armhf.deb
nano /etc/kplex.conf, uncomment lines and change filename to /dev/pts/x
```

If you wish to see which ports your machine is listening to, install nmap
```
sudo apt-get install nmap
```

Check on another device (e.g. smartphone, tablet) if you receive the gps data. Download a GPS app, change the settings to your Raspberry Pi's IP address and set port to 11010.

## 8. Prepare Bluetooth dongle
http://www.instructables.com/id/Turn-your-Raspberry-Pi-into-a-Portable-Bluetooth-A/step3/Install-prerequisite-packages/
http://computers.tutsplus.com/articles/using-a-raspberry-pi-as-an-airplay-receiver--mac-54316

## 9. Set up Bluetooth access point

## 10. Check if you receive GPS data through Bluetooth access point

## 11. Connect NMEA USB to Raspberry Pi

nmea0183-signalk?
Install Kplex?
