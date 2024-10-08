#!/bin/sh

# export PATH=$PATH:~/bin
export PATH=$PATH:~/.local/bin
export PATH=$PATH:~/dotfiles/scripts

export EDITOR=nvim
export VISUAL=nvim
export TERM="xterm-256color"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export HISTFILE="$XDG_DATA_HOME/history"

# export GTK_THEME="Materia-dark-compact"
# export QT_QPA_PLATFORMTHEME="qt6ct"
# export XCURSOR_THEME="Breeze"

# [ "$(tty)" = "/dev/tty1" ] && start-hyprland
# [ "$(tty)" = "/dev/tty2" ] && ! pidof -s Xorg >/dev/null 2>&1 && exec startx
