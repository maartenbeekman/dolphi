dolphi
======

Dolphi is an open project, aiming to build a device which gathers all sensoric data on a yacht and broadcasts to personal devices such as smart phones, tablets and smart watches.

For more information about the dolphi project, please visit the project wiki at https://github.com/maartenbeekman/dolphi/wiki

At the moment of writing this, no code has been submitted yet. Please follow the instructions to set up the dolphi project:

Requirements
============
- Raspberry Pi or Raspberry (model A, B or B+) and power supply
- SD card
- Raspberry compatible Bluetooth dongle
- Serial to USB converter with NMEA output on instrument

Instructions
============
1. Download and install Raspbian
Download the latest version of Raspbian at http://www.raspberrypi.org/downloads/

2. Basic Raspbian configuration
SSH into the machine and run the following to extend HD space, change the default password and change the local timezone: sudo raspi-config

3. Prepare NMEA connection
Install Kplex

4. Connect NMEA USB to Raspberry Pi

5. Prepare Bluetooth dongle

6. Connect Bluetooth dongle and broadcast NMEA data

7. Connect smart phone to Raspberry Pi bluetooth

8. Run smart watch app to display NMEA information
