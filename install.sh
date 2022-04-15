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

# create symbolic links for the starter scripts
if [ ! -e "/usr/bin/startdwm" ]; then
	sudo ln -s "$(pwd)/scripts/startdwm" /usr/bin/startdwm
fi
if [ ! -e "/usr/bin/dwm-bar" ]; then
	sudo ln -s "$WORKSPACE/dwm-bar/dwm_bar.sh" /usr/bin/dwm-bar
fi
