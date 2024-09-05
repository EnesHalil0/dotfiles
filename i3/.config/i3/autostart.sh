#/bin/sh

xrandr --output eDP --mode 1920x1080
xrandr --output HDMI-A-0 --mode 1920x1080 -r 75 --primary --right-of eDP

pidof picom > /dev/null || picom -b
pkill dunst || dunst &
pidof nm-applet > /dev/null || nm-applet &
pidof feh > /dev/null || feh --bg-fill ~/.local/wallpapers/kanagawa.png &
