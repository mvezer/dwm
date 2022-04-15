#!/bin/sh

setxkbmap -layout de,gb -option grp:alt_shift_toggle &
dwm-bar &
feh --bg-fill $HOME/.dwm/background.jpg
