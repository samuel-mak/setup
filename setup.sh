#!/usr/bin/env bash

# Create symlink to .Xresources
if [ ! -f "~/.Xresources" ]; then
	ln -s "~/projects/setup/config/.Xresources" "~/.Xresources"
fi

# Create desktop application autostart config script
if [ ! -d "~/.config/autostart" ]; then
	cd "~/.config"
	mkdir "autostart"
fi 
cd "~/.config/autostart"
cp "~/projects/setup/startup/xresources.desktop" .

