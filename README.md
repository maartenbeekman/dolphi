Hubster
======

Hubster is an open project, aiming to build a device which gathers all sensoric data on a yacht and broadcasts to personal devices such as smart phones, tablets and smart watches. Sensoric data is irrespective of its manufacturer / supplier and the first data will be gathered through NMEA 0183.

For more information about the Hubster project, please visit the project wiki at https://github.com/maartenbeekman/pi-hubster/wiki

At the moment of writing this, no code has been submitted yet. Please follow the (draft) instructions to set up the Hubster project:

Requirements
============
- Raspberry Pi or Raspberry (model A, B or B+) and power supply
- SD card (8GB is recommended)
- Raspberry compatible Bluetooth dongle
- Serial to USB converter with NMEA output on instrument (if you don't have instruments available you can emulate the NMEA input)

(Draft) Instructions
====================
1. Download and install Raspbian
Download and install the latest version of Raspbian at http://www.raspberrypi.org/downloads/ and prepare the SD disk.

2. Basic Raspbian configuration
Boot up the Raspberry Pi with the prepared SD card, SSH into the machine and run the following to extend file system, change the default password and change the local timezone: sudo raspi-config

3. Prepare NMEA connection
Install gpsd and libgps20
Install python-gps

Build and install canboat https://github.com/canboat/canboat/wiki/Building
nmea0183-signalk?
Install Kplex?

4. Connect NMEA USB to Raspberry Pi

5. Prepare Bluetooth dongle

6. Connect Bluetooth dongle and broadcast NMEA data

7. Connect smart phone to Raspberry Pi bluetooth

8. Run smart phone app to display multiplexed NMEA information
