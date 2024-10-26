#!/bin/bash

status=$(nmcli g | grep -oE "disconnected")
essid=$(nmcli -t -f NAME connection show --active | head -n 1)

if [ "$status" ]; then
  icon=""
  text=""
  color="#585b70"
else
  icon=""
  text="${essid}"
  color="#cdd6f4"
fi

case "$1" in
"--color")
  echo "$color"
  ;;
"--essid")
  echo "$text"
  ;;
"--icon")
  echo "$icon"
  ;;
*)
  echo "Invalid option"
  ;;
esac

