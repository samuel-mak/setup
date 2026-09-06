#!/usr/bin/env bash

# Display resolution
# This is a bit tricky to script, you might need further adjustments
## Set HDMI 2 connection as the primary display and set resolution to 3840x2160
display=$(xrandr | grep " connected" | awk '{print $1}' | head -n 1)
xrandr --output "$display" --mode 3840x2160 --primary

# X resources
lnin "$SETUP/config/.Xresources" "$HOME/.Xresources"
sed -i "/^Exec=/c\Exec=$SETUP/scripts/xresources.sh" "$SETUP/config/xresources.desktop"
lnin "$SETUP/config/xresources.desktop" "$HOME/.config/autostart/xresources.desktop"
"$SETUP/scripts/xresources.sh"
