#!/usr/bin/env bash

# Create desktop application autostart config script
if [ ! -d ~/.config/autostart ]; then
	cd ~/.config
	mkdir autostart
fi 
cd ~/.config/autostart
cp ~/projects/setup/startup/xresources.desktop .


# Set UK keyboard (replace 'gb' with 'us' for US layout)
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'gb')]"
