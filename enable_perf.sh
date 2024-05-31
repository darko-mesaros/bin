#!/bin/bash

for dev in /sys/devices/system/cpu/cpu[1-7]*/; do
	echo 1 > $dev/online
done
