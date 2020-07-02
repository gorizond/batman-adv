#!/bin/bash
# Tell batman-adv which interface to use
batctl if add wlan0
# Activates the interfaces for batman-adv
ifconfig wlan0 up
ifconfig bat0 up # bat0 is created via the first command
exec bash
