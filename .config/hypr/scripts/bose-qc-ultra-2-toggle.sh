#!/bin/bash

STATUS_FILE="/tmp/bose-soundlink-max_script_status.txt"
MAC_ADDRESS="E4:58:BC:BF:AE:FE"

# Überprüfen, ob die Datei existiert und den aktuellen Status lesen
if [[ -f "$STATUS_FILE" ]]; then
    STATUS=$(cat "$STATUS_FILE")
else
    STATUS=0
fi

if [[ "$STATUS" -eq 0 ]]; then
    notify-send "BOSE QuietComfort Ultra 2nd Gen. connected"
    bluetoothctl connect $MAC_ADDRESS
    echo 1 > "$STATUS_FILE"
else
    notify-send "BOSE QuietComfort Ultra 2nd Gen. disconnected"
    bluetoothctl disconnect $MAC_ADDRESS
    echo 0 > "$STATUS_FILE"
fi
