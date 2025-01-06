#!/bin/bash

TEMP_FILE="$HOME/.tempapps"
DESKTOP_DIR="$HOME/.local/share/applications"
declare -A desktop_entries

# Function to populate desktop_entries
populate_entries() {
  for desktop_file in "$DESKTOP_DIR"/*.desktop; do
    [ -f "$desktop_file" ] || continue
    name_line=$(awk -F= '/\[Desktop Entry\]/ {found=1} found && /^Name=/ {print $2; exit}' "$desktop_file")
    exec_line=$(awk -F= '/\[Desktop Entry\]/ {found=1} found && /^Exec=/ {print $2; exit}' "$desktop_file")
    if [ -n "$name_line" ] && [ -n "$exec_line" ]; then
      desktop_entries["$name_line"]="$exec_line"
    fi
  done

  while IFS= read -r command; do
    desktop_entries["$command"]="$command"
  done < <(compgen -c | sort -u)
}

# Check if temp file exists and is older than 8 hours
if [[ ! -f "$TEMP_FILE" || $(find "$TEMP_FILE" -mmin +480 2>/dev/null) ]]; then
  rm -f "$TEMP_FILE"

  # Repopulate entries and write to temp file
  populate_entries
  {
    for name in "${!desktop_entries[@]}"; do
      echo "$name:${desktop_entries[$name]}"
    done
  } > "$TEMP_FILE"
else
  # Load entries from temp file
  while IFS=: read -r name exec; do
    desktop_entries["$name"]="$exec"
  done < "$TEMP_FILE"
fi

# Display options and execute selection
selected_name=$(printf "%s\n" "${!desktop_entries[@]}" | sort | fzf --layout=reverse --prompt="Wähle eine Anwendung: ")

if [ -n "$selected_name" ]; then
  selected_exec="${desktop_entries[$selected_name]}"
  $selected_exec
fi

