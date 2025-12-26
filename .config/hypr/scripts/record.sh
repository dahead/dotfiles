#!/bin/bash

if pgrep -x wf-recorder > /dev/null; then
    pkill -SIGINT wf-recorder
    notify-send 'Recording stopped.'
else
    notify-send 'Recording started...'
    wf-recorder -g "$(slurp)" -f $(xdg-user-dir VIDEOS)/$(date +'%s_recording.mp4')
fi
