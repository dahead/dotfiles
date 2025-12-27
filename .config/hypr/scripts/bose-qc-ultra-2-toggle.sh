#!/bin/bash
MAC_ADDRESS="E4:58:BC:BF:AE:FE"

# Check if device is currently connected
if bluetoothctl info "$MAC_ADDRESS" | grep -q "Connected: yes"; then
    notify-send "BOSE QuietComfort Ultra 2nd Gen. disconnected"
    bluetoothctl disconnect "$MAC_ADDRESS"
else
    notify-send "BOSE QuietComfort Ultra 2nd Gen. connected"
    bluetoothctl connect "$MAC_ADDRESS"
fi
