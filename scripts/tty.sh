#!/usr/bin/env bash

# TTY cursor blinking
# Blink (1) or don't blink (0)
cursor_blink_target=0

printf "Setting TTY cursor blink... "
if [ -f /sys/class/graphics/fbcon/cursor_blink ]; then
	read cursor_blink_current < /sys/class/graphics/fbcon/cursor_blink
	if [ cursor_blink_current != cursor_blink_target ]; then
		echo $cursor_blink_target | sudo tee /sys/class/graphics/fbcon/cursor_blink > /dev/null
	fi
else
	sudo touch /sys/class/graphics/fbcon/cursor_blink
	echo $cursor_blink_target | sudo tee /sys/class/graphics/fbcon/cursor_blink > /dev/null
fi
printf "done\n"
