#!/bin/bash

status=$(bluetoothctl show | grep -oE "Powered: yes")
connected_devices_count=$(bluetoothctl devices Connected | wc -l)

if [ "$status" ]; then
  icon=""
  if [ "$connected_devices_count" -gt 0 ]; then
    text="${connected_devices_count} Devices"
    color="#cdd6f4"
  else
    text="No Devices"
    color="#585b70"
  fi
else
  icon=""
  text="Off"
  color="#585b70"
fi

case "$1" in
"--color")
  echo "$color"
  ;;
"--devices")
  echo "$text"
  ;;
"--icon")
  echo "$icon"
  ;;
*)
  echo "Invalid option"
  ;;
esac

