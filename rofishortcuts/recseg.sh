#!/bin/bash

# REQUIREMENTS:
# ffcast

# Records the segment of the screen
ffcast -q $(while slop -q -n -f '-g %g ';do :;done) rec $HOME/vid/screengrab/rec-"$(date +%Y-%m-%d-%H-%M-%S | tr A-Z a-z)"-%s.mp4
