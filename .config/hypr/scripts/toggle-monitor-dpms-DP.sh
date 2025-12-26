#!/bin/bash

# fast
hyprctl dispatch dpms toggle DP-1
notify-send "DP display dpms toggled"

# slow
# STATUS=$(hyprctl monitors | grep -A 1 "Monitor DP-1" | grep "disabled: true")

# if [ -z "$STATUS" ]; then
#     hyprctl keyword monitor "DP-1,disable"
# else
#     hyprctl keyword monitor "DP-1,preferred,auto,1"
# fi
