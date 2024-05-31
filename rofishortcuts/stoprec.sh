#!/bin/bash

# Stops the recording made by ffcast
# REQUIREMENTS:
# pkill

# Records the segment of the screen
pkill -fxn '(/\S+)*ffmpeg\s.*\sx11grab\s.*'
