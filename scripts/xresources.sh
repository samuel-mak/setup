#!/usr/bin/env bash

## Source config
## Requires the DISPLAY variable to be defined
## Add a 3-second sleep to ensure the DISPLAY variable is defined beforehand
## Tried 1 and 2 seconds but didn't work
(sleep 3 && xrdb -merge "$HOME/.Xresources") &
