#!/usr/bin/env bash

# Bar characters indexed 0–7 (8 levels)
bars=(▁ ▂ ▃ ▄ ▅ ▆ ▇ █)

# Exclude these filesystem types
EXCLUDE="tmpfs|devtmpfs|squashfs|overlay|loop|efivarfs|bpf|cgroup|proc|sysfs|ramfs|fuse.gvfsd"

text=""
tooltip=""

while IFS= read -r line; do
    mountpoint=$(echo "$line" | awk '{print $NF}')
    device=$(echo "$line" | awk '{print $1}')
    used_pct=$(echo "$line" | awk '{print $5}' | tr -d '%')

    # Map 0–100% to bar index 0–7
    idx=$(( used_pct * 7 / 100 ))
    [[ $idx -gt 7 ]] && idx=7

    # bar="${bars[$idx]}"
    # After idx calculation, replace: bar="${bars[$idx]}"
    if [[ $used_pct -ge 90 ]]; then
        color="#ff4444"
    elif [[ $used_pct -ge 70 ]]; then
        color="#ffaa00"
    else
        color="#aaffaa"
    fi
    bar="<span foreground='${color}'>${bars[$idx]}</span>"

    text+="$bar"
    tooltip+="$device → $mountpoint  ${used_pct}% used\n"
done < <(df -h --output=source,size,used,avail,pcent,target | tail -n +2 \
    | grep -Ev "($EXCLUDE)" \
    | grep -Ev "^(none|udev|tmpfs)" )

# Output Waybar JSON
tooltip_escaped=$(echo -e "$tooltip" | head -c -1 | sed 's/$/\\n/' | tr -d '\n')
printf '{"text": "%s", "tooltip": "%s"}\n' "$text" "$tooltip_escaped"

