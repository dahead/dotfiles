#!/bin/bash
notify-send "Reconnecting AirPods..."
bluetoothctl disconnect A0:A3:09:3E:C6:C4
bluetoothctl connect A0:A3:09:3E:C6:C4
notify-send "Done. Enjoy!"
