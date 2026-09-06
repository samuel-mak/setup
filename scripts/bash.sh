#!/usr/bin/env bash

# SETUP variable definition
if grep -q "^export SETUP" "$SETUP/config/.bashrc"
then
	sed -i "/^export SETUP/c\export SETUP=\"$SETUP\"" "$SETUP/config/.bashrc"
elif grep -q "^export " "$SETUP/config/.bashrc"
then
	line=$(awk '/^export / { print NR; exit }' "$SETUP/config/.bashrc")
	sed -i "${line}i\export SETUP=\"$SETUP\"" "$SETUP/config/.bashrc"
else
	sed -i "1i\export SETUP=\"$SETUP\"" "$SETUP/config/.bashrc"
fi

lnin "$SETUP/config/.bashrc" "$HOME/.bashrc"
source "$HOME/.bashrc"
lnin "$SETUP/config/.bash_profile" "$HOME/.bash_profile"
