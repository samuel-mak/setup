#!/usr/bin/env bash

# Create desktop application autostart config script
if [ ! -d ~/.config/autostart ]; then
	cd ~/.config
	mkdir autostart
fi 
cd ~/.config/autostart
cp ~/projects/setup/startup/xresources.desktop .

# Symlinks

if [[ 
	( ! -f "$HOME/.vimrc") || 
	( -f "$HOME/.vimrc" && ( $(sha256sum "$HOME/.vimrc" | cut -c1-64) !=  $(sha256sum "$HOME/projects/setup/config/.vimrc" | cut -c1-64 ) ) ) ]]; then
	ln -sf "$HOME/projects/setup/config/.vimrc" "$HOME/.vimrc"
	echo "symlink created!"
else
	echo ".vimrc exists and is correct!"
fi

	

# Set UK keyboard ('us' or 'gb' for US or UK layout)
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us')]"

# Remove wallpaper (which results in solid black wallpaper - prefer this method to creating
# a black png file
# The line below should remove any pictures and should change to a solid colour
# But the solid colour may not be black, so the second line sets the colour to black
gsettings set org.gnome.desktop.background picture-options 'none'
gsettings set org.gnome.desktop.background primary-color '#000000'
