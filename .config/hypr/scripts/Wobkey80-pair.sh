#!/bin/bash
MAC_ADDRESS="E4:17:D8:97:19:98"

# Check if device is currently connected
if bluetoothctl info "$MAC_ADDRESS" | grep -q "Connected: yes"; then
    notify-send "Wobkey 80 disconnected"
    bluetoothctl disconnect "$MAC_ADDRESS"
else
    notify-send "Wobkey 80 connected"
    bluetoothctl connect "$MAC_ADDRESS"
fi

bluetoothctl connect 
