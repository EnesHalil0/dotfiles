#!/bin/sh

# export PATH=$PATH:~/bin
# export PATH=$PATH:~/.local/bin
export PATH="$PATH:$(find ~/.local/bin -type d | paste -sd ':' -)"
# export PATH=$PATH:~/dotfiles/scripts

export EDITOR=nvim
export VISUAL=nvim
export TERM="xterm-256color"
export TERMINAL=foot

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export HISTFILE="$XDG_DATA_HOME/history"

# [ "$(tty)" = "/dev/tty1" ] && start-hyprland
# [ "$(tty)" = "/dev/tty2" ] && ! pidof -s Xorg >/dev/null 2>&1 && exec startx
# [ "$(tty)" = "/dev/tty1" ] && ! pidof -s river >/dev/null 2>&1 && exec ~/.local/bin/start-sway
