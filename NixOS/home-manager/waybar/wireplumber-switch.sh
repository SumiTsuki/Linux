#!/bin/bash

selected=$(wpctl status | awk '/Sinks:/, /Sources:/' | grep -E '^[^0-9]*[0-9]+\.' |
  sed -E 's/[^0-9]*([0-9]+)\. (.+)/\1:\2/' |
  wofi --dmenu --prompt="Select Output Device")

if [ -n "$selected" ]; then
  device_id=$(echo "$selected" | cut -d':' -f1)
  wpctl set-default "$device_id"
fi
