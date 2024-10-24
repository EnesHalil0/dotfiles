#!/bin/sh

#
# Display Settings
#

wlr-randr --output HDMI-A-1 --custom-mode 1920x1080@75
wlr-randr --output eDP-1 --pos 0,0

#
# GTK Settingsc
#

gnome_schema=org.gnome.desktop.interface
gsettings set $gnome_schema gtk-theme 'Kanagawa'
gsettings set $gnome_schema icon-theme 'Papirus-Dark'
gsettings set $gnome_schema cursor-theme 'Breeze'
gsettings set $gnome_schema font-name 'Fira Sans'
gsettings set org.gnome.desktop.interface color-scheme prefer-dark

#
# Gnome Polkit
#
pgrep polkit-gnome || /usr/libexec/polkit-gnome-authentication-agent-1 &

#
# Starting Apps
#

pidof -sx swaybg || swaybg -i ~/.local/wallpapers/kanagawa.png -m fill &
pidof waybar || waybar &
pidof nm-applet || nm-applet &
pidof wl-paste || wl-paste --watch cliphist store &
pidof wlsunset || wlsunset -l 41 -L 29 &
pidof swayidle || swayidle -w \
  timeout 300 'swaylock -f -i ~/.local/wallpapers/kanagawa.png' \
  timeout 600 'swaylock -F -i ~/.local/wallpapers/kanagawa.png' \
  before-sleep 'swaylock -f -i ~/.local/wallpapers/kanagawa.png' &
pidof syncthing || syncthing serve --no-browser --logfile=default &
pidof swaync || swaync &
pidof rclone || sh -c "~/.config/river/rclone-mount.sh" &
