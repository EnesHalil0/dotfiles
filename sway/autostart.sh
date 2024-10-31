#!/bin/sh

#
# Desktop Portal
#

pidof xdg-desktop-portal-wlr || sh -c "/usr/lib/xdg-desktop-portal-wlr &" &

#
# Idle and Screenlock
#

pidof swayidle || \
  swayidle -w \
  timeout 300 'swaylock -f -c 000000' \
  timeout 600 'swaymsg "output * power off"' resume 'swaymsg "output * power on"' \
  before-sleep 'swaylock -f -c 000000' &

#
# Network Manager
#

pidof nm-applet || nm-applet &

#
# Notification Daemon
#

pidof mako || mako &

#
# Clipboard
#

pidof wl-paste || wl-paste --watch cliphist store &

#
# Night Light
#

pidof wlsunset || wlsunset -l 41 -L 29 &

#
# Waybar
#

killall -q waybar
while pgrep -x waybar >/dev/null; do sleep 1; done
waybar &
