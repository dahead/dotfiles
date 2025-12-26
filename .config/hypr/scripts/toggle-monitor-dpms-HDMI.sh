#!/bin/bash

# fast
hyprctl dispatch dpms toggle HDMI-A-1
notify-send "HDMI display dpms toggled"

# slow
# STATUS=$(hyprctl monitors | grep -A 1 "Monitor HDMI-A-1" | grep "disabled: true")

# if [ -z "$STATUS" ]; then
#     hyprctl keyword monitor "HDMI-A-1,disable"
# else
#     hyprctl keyword monitor "HDMI-A-1,preferred,auto,1"
#     # hyprctl dispatch dpms on HDMI-A-I
# fi
