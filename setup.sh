#!/usr/bin/env bash

mydir="$(pwd)"

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

cd $mydir

# Display resolution
# This is a bit tricky to script, you might need further adjustments, but this is a good first step
## Set HDMI 2 connection as the primary display and set resolution to 3840x2160
display=$(xrandr | grep " connected" | awk '{print $1}' | head -n 1)
xrandr --output "$display" --mode 3840x2160 --primary

## Tips for gsettings
## If you don't know what parameters are for what, then do `gsettings list-recursively` to list all the current settings, go to the GUI settings and do something, and do that list again to see what changed, this way you can map what's in the setting and gsettings parameters


	
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
## Don't display any applications in dock
gsettings set org.gnome.shell favorite-apps "[]"

## Dark theme
### This may not not have an effect - The line below should be the effector
gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

## Highlight color
gsettings set org.gnome.desktop.interface accent-color 'green'

## No desktop icons
gsettings set org.gnome.desktop.background show-desktop-icons false

## Time inactive until screen saver (seconds)
gsettings set org.gnome.desktop.session idle-delay 3600

# Disable screen blanking (don't turn off screen after inactivity)
gsettings set org.gnome.desktop.session idle-delay 0

# Disable alert sound
gsettings set org.gnome.desktop.sound event-sounds false

# Disable hot-corners
gsettings set org.gnome.desktop.interface enable-hot-corners false

# Time format
gsettings set org.gnome.desktop.interface clock-format '24h'

# Show all windows
gsettings set org.gnome.desktop.wm.keybindings switch-applications "['<Super>Tab', '<Alt>Tab']"

# MacBook Pro Intel/T2 specific settings
# Disable automatic suspend when plugged in to power source
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'nothing'
# Disable automatic suspend when on battery power
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-type 'nothing'

# Disable automatic suspend when on battery power
gsettings set org.gnome.settings-daemon.plugins.power power-button-action 'nothing'

## Source
scripts/bash.sh
scripts/xresources.sh

echo "done!"
