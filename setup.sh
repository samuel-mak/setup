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


# Display resolution
# This is a bit tricky to script, you might need further adjustments, but this is a good first step
## Set HDMI 2 connection as the primary display and set resolution to 3840x2160
display=$(xrandr | grep " connected" | awk '{print $1}' | head -n 1)
xrandr --output "$display" --mode 3840x2160 --primary
	
# Display scaling
## Scale to 200%
gsettings set org.gnome.desktop.interface scaling-factor 2

# Set UK keyboard ('us' or 'gb' for US or UK layout)
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us')]"

# Wallpaper
## Remove any wallpaper picture and should change to solid colours
gsettings set org.gnome.desktop.background picture-options 'none'
## Set wallpaper solid colour to black
gsettings set org.gnome.desktop.background primary-color '#000000'

# Dock
## Dock position to bottom
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position 'BOTTOM'
## Don't display any applications in dock
gsettings set org.gnome.shell favorite-apps "[]"
## Don't display trash in dock
gsettings set org.gnome.shell.extensions.dash-to-dock show-trash false
## Show the "show-apps" button (only)
gsettings set org.gnome.shell.extensions.dash-to-dock show-show-apps-button true
## Autohide dock
gsettings set org.gnome.shell.extensions.dash-to-dock autohide true
## Disable intellihide
## intellihide is a type of autohide
## It hides dock only when there are overlapping windows
## However, I want to to be always hidden unless I hover near it
gsettings set org.gnome.shell.extensions.dash-to-dock intellihide false










