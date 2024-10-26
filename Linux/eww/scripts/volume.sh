#!/bin/bash

# Function to get the current volume level
get_volume() {
  amixer get Master | grep -oP '\[\d+%\]' | head -n 1 | tr -d '[]%'
}

# Function to check if the volume is muted
is_muted() {
  amixer get Master | grep -oP '\[off\]' | head -n 1
}

# Function to determine the volume icon
get_volume_icon() {
  volume=$(get_volume)
  if [ "$(is_muted)" ]; then
    echo "" # Muted icon
  elif [ "$volume" -eq 0 ]; then
    echo "" # Volume < 10% icon
  elif [ "$volume" -lt 50 ]; then
    echo "" # Low volume icon
  else
    echo "" # High volume icon
  fi
}

# Function to get the battery percentage
get_battery_percentage() {
  amixer -D default sget Master | grep 'Left:' | awk -F'[][]' '{ print $2 }' | tr -d '%'
}

# Parse command-line arguments
if [ "$1" == "--percent" ]; then
  get_battery_percentage
elif [ "$1" == "--icon" ]; then
  get_volume_icon
fi

