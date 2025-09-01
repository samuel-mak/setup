#!/usr/bin/env bash

# Tried pointing to projects/setup/config/.Xresources and it didn't work
# I think x applications look for the .Xresources in the home directory
# So I've made a symlink in home called .Xresources pointing to 
# projects/setup/config/.Xresources
xrdb -merge  /home/smak/.Xresources

