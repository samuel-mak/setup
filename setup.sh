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

# Remove wallpaper (which results in solid black wallpaper - prefer this method to creating
# a black png file
# The line below should remove any pictures and should change to a solid colour
# But the solid colour may not be black, so the second line sets the colour to black
gsettings set org.gnome.desktop.background picture-options 'none'
gsettings set org.gnome.desktop.background primary-color '#000000'
