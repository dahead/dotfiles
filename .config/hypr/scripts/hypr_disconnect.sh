#!/bin/bash
notify-send "Disconnecting gamepad"
bluetoothctl disconnect 24:A6:FA:BF:89:FC
notify-send "Done!"
