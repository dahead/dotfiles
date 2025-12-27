f#!/bin/bash
MAC_ADDRESS="E44:58:BC:B6:74:EB"

# Check if device is currently connected
if bluetoothctl info "$MAC_ADDRESS" | grep -q "Connected: yes"; then
    notify-send "BOSE Soundlink Max disconnected"
    bluetoothctl disconnect "$MAC_ADDRESS"
else
    notify-send "BOSE Soundlink Max connected"
    bluetoothctl connect "$MAC_ADDRESS"
fi
