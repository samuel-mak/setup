#!/usr/bin/env bash

# Create desktop application autostart config script
cd ~/.config
if [ ! -d "autostart" ]; then
	mkdir autostart
fi 
cd autostart 
cp ~/projects/setup/startup/xresources.desktop .
cd
