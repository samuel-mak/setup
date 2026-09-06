#!/usr/bin/env bash

# Script directory
export SETUP="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

# Dependencies
chmod +x "$SETUP/scripts/*"
source "$SETUP/scripts/lnin"
export -f lnin

# Directories
"$SETUP/scripts/dir.sh"

# TTY
"$SETUP/scripts/tty.sh"

# Bash
"$SETUP/scripts/bash.sh"

# wifi
"$SETUP/scripts/wifi.sh"

# VIM
lnin "$SETUP/config/.vimrc" "$HOME/.vimrc"

# GNOME
"$SETUP/scripts/gnome.sh"

# X
"$SETUP/scripts/x.sh"


echo "done!"
