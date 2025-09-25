#!/usr/bin/env bash
WALLPAPER_DIR="$HOME/Wallpaper/"

# Get a random wallpaper that's not currently loaded
WALLPAPER=$(find "$WALLPAPER_DIR" -type f | while IFS= read -r file; do
    filename=$(basename "$file")
    if ! hyprctl hyprpaper listloaded | grep -q "$filename"; then
        echo "$file"
    fi
done | shuf -n 1)

# Get the name of the focused monitor with hyprctl
FOCUSED_MONITOR=$(hyprctl monitors -j | jq -r '.[] | select(.focused) | .name')

# Check if we found a wallpaper
if [[ -n "$WALLPAPER" ]]; then
    # hyprctl hyprpaper preload $WALLPAPER
    # hyprctl hyprpaper wallpaper ",$WALLPAPER"
    hyprctl hyprpaper reload "$FOCUSED_MONITOR","$WALLPAPER"
else
    echo "No available wallpapers found"
fi
