#!/bin/sh

killall -q waybar

while pgrep -x waybar >/dev/null; do sleep 1; done

waybar -c ~/.config/waybar/config.jsonc -s ~/.config/waybar/style.css &
