#!/bin/bash
# Uses alacritty, fzf, compgen and hyprctl to display a list of all applications (compgen)
# and let the user choose (alacritty) which one to execute.
exec alacritty --title "HyprLauncher" --class "HyprLauncher" -e bash -c "compgen -c | sort -u | fzf --layout=reverse | xargs hyprctl dispatch exec" 
