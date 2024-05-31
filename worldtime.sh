#!/bin/bash

# REQUIREMENTS:
# osd_clock (https://github.com/darko-mesaros/osd_clock)
# xorg-fonts-misc

TZ='US/Eastern' osd_clock --color green --bottom --font "-*-fixed-medium-r-*-*-60-*-*-75-*-*-iso8859-*" & \
TZ='Europe/Berlin' osd_clock --color red --bottom --center --font "-*-fixed-medium-r-*-*-60-*-*-75-*-*-iso8859-*" & \
TZ='Australia/Sydney' osd_clock --color cyan --bottom --right --font "-*-fixed-medium-r-*-*-60-*-*-75-*-*-iso8859-*" &

sleep 5
killall osd_clock
