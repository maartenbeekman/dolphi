Hubster
======

Hubster is an open project, aiming to build a device which gathers all sensoric data, irrespective of its manufacturer, on a yacht and broadcasts to personal devices such as smart phones, tablets and smart watches.

For more information about the Hubster project, please visit the project wiki at https://github.com/maartenbeekman/pi-hubster/wiki

At the moment the project is "smartly combining" the work of others and has no own code yet (apart from basic installation).   Please follow the (draft) instructions to set up a Hubster project:

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
## 4. Set up fake GPS connection (until you have real connection on a yacht) using a NMEA logfile
Run GPS fake
Find which pseudo TTY is used by gpsfake (1 and 2 in this case).
```
ls /dev/pts
gpsfake -p xxx.log
ls /dev/pts
nano /etc/kplex.conf, uncomment lines and change filename to /dev/pts/x
kplex
```
Check on another device (e.g. smartphone, tablet) if you receive the gps data. Download a GPS app, change the settings to your Raspberry Pi's IP address and set port to 11010.

## 5. Prepare Bluetooth dongle
http://www.instructables.com/id/Turn-your-Raspberry-Pi-into-a-Portable-Bluetooth-A/step3/Install-prerequisite-packages/
http://computers.tutsplus.com/articles/using-a-raspberry-pi-as-an-airplay-receiver--mac-54316

## 6. Set up Bluetooth access point

## 7. Check if you receive GPS data through Bluetooth access point

## 8. Connect NMEA USB to Raspberry Pi

nmea0183-signalk?
