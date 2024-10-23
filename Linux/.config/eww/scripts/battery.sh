#!/bin/bash

battery() {
  BAT=$(ls /sys/class/power_supply | grep bat | head -n 1)
  cat /sys/class/power_supply/${BAT}/capacity
}

battery_status() {
  BAT=$(ls /sys/class/power_supply | grep bat | head -n 1)
  cat /sys/class/power_supply/${BAT}/status
}

battery_icon() {
  status=$(battery_status)
  if [[ "$status" == "Charging" ]]; then
    echo ""  # Charging icon
  else
    echo ""  # Battery icon
  fi
}

if [[ "$1" == "--percent" ]]; then
  battery
elif [[ "$1" == "--status" ]]; then
  battery_status
elif [[ "$1" == "--icon" ]]; then
  battery_icon
fi