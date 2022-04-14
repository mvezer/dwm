#!/bin/sh

# build and install dwm
sudo make clean install

# copy the config files
DWM_DIR="$HOME"
if [ -d "$XDG_DATA_HOME/dwm" ]; then
	rm -rf $XDG_DATA_HOME/dwm
elif [ -d "$HOME/.local/share/dwm" ]; then
	rm -rf $HOME/.local/share/dwm
elif [ -d "$HOME/.dwm" ]; then
	rm -rf $HOME/.dwm
fi
ln -s "$(pwd)/.dwm" $DWM_DIR

sudo cp -f ./scripts/startdwm /usr/bin/
