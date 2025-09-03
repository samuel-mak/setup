#!/usr/bin/env bash

# Need to wait for the DISPLAY variable to be defined before sourcing (currently adding sleep of 3 seconds, tried 1 and 2 seconds but didn't work))
 
(sleep 3 && xrdb -merge /home/smak/projects/setup/config/.Xresources) &

