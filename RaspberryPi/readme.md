# Headless setup for Raspberry Pi
Setup the device without a monitor and a keyboard, by simply following the steps.

## Steps
1. Download and burn the [latest Raspbian image](https://downloads.raspberrypi.org/raspbian_lite_latest) to the SD Card using tool like [Etcher](https://www.balena.io/etcher)
1. Mount the SD Card to your laptop / computer
1. Create an **empty-file** by name `ssh` in the `/Volumes/boot/` folder
1. Create file `wpa_supplicant.conf` in the `/Volumes/boot/` folder, with the contents mentioned in the next section
1. SSH into the device to install more packages

## Create the empty file `ssh`
    touch /Volumes/boot/ssh

## Contents of `wpa_supplicant.conf` file
    ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
    update_config=1

    network={
        ssid="wi-fi-ssid"
        psk="wi-fi-password"
        proto=RSN
        key_mgmt=WPA-PSK
        pairwise=CCMP
        auth_alg=OPEN
    }

## Note
* Replace actual values for `Wi-Fi SSID` and `Wi-Fi Password`
* _Follow best practices_ while choosing, storing and sharing Wi-Fi and device passwords

_Tested on **Raspberry Pi 3 B+** and **Raspberry Pi Zero W** with **Rasbian Jessie** and **Raspbian Stretch**_
