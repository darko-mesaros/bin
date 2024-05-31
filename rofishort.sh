#!/bin/bash

SH_PATH="$HOME/bin/rofishortcuts/"

selected=$(ls "$HOME/bin/rofishortcuts/" | rofi -dmenu -font "JetBrains Mono NL 18" -p "shortcuts: ")
[[ -z $selected ]] && exit

bash $SH_PATH$selected
