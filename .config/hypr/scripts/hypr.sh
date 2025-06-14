#!/bin/bash
notify-send "Reconnecting Hypr Gamepad..."
bluetoothctl disconnect 24:A6:FA:BF:89:FC
bluetoothctl connect 24:A6:FA:BF:89:FC
notify-send "Done. Enjoy!"
