#!/bin/sh

if command hyprctl monitors | grep eDP-1 > /dev/null; then
    hyprctl keyword monitor eDP-1, disable
else
    hyprctl reload
fi
