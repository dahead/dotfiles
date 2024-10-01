#!/bin/bash

STATUS_FILE="/tmp/airpods_script_status.txt"
MAC_ADDRESS="A0:A3:09:3E:C6:C4"

# Überprüfen, ob die Datei existiert und den aktuellen Status lesen
if [[ -f "$STATUS_FILE" ]]; then
    STATUS=$(cat "$STATUS_FILE")
else
    STATUS=0
fi

if [[ "$STATUS" -eq 0 ]]; then
    notify-send "AirPods connected"
    bluetoothctl connect $MAC_ADDRESS
    echo 1 > "$STATUS_FILE"
else
    notify-send "AirPods disconnected"
    bluetoothctl disconnect $MAC_ADDRESS
    echo 0 > "$STATUS_FILE"
fi
