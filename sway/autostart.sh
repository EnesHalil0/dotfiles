#!/bin/sh

#
# Desktop Portal
#

pidof xdg-desktop-portal-wlr || \ 
  pkill -f /usr/lib/xdg-desktop-portal &
  pkill -f /usr/lib/xdg-desktop-portal-wlr &
  /usr/lib/xdg-desktop-portal-wlr &
  /usr/lib/xdg-desktop-portal &

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
