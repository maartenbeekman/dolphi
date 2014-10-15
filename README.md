Hubby
======

Hubby is an open project, aiming to build a device which gathers all sensoric data on a yacht and broadcasts to personal devices such as smart phones, tablets and smart watches.

For more information about the Hubby project, please visit the project wiki at https://github.com/maartenbeekman/pi-hubby/wiki

At the moment of writing this, no code has been submitted yet. Please follow the instructions to set up the dolphi project:

Requirements
============
- Raspberry Pi or Raspberry (model A, B or B+) and power supply
- SD card
- Raspberry compatible Bluetooth dongle
- Serial to USB converter with NMEA output on instrument

(Draft) Instructions
====================
1. Download and install Raspbian
Download the latest version of Raspbian at http://www.raspberrypi.org/downloads/

2. Basic Raspbian configuration
SSH into the machine and run the following to extend HD space, change the default password and change the local timezone: sudo raspi-config

3. Prepare NMEA connection
Build and install canboat https://github.com/canboat/canboat/wiki/Building
# nmea0183-signalk?
# Install Kplex?

4. Connect NMEA USB to Raspberry Pi

5. Prepare Bluetooth dongle

6. Connect Bluetooth dongle and broadcast NMEA data

7. Connect smart phone to Raspberry Pi bluetooth

8. Run smart phone app to display multiplexed NMEA information
