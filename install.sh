#!/usr/bin/env bash

software=(
	"xterm"
	"bash"
	"vim"
	"git"
	"curl"
	"tmux"
	"r-base"
	"python3"
	"imagemagick"
	"vlc"
	"pandoc"
	"yt-dlp"
	
)

# Software not part of apt
# proton vpn

# Other software needed but is native
# GNU coreutils (incl. sha256sum), findutils (e.g. xargs, find, grep)

apt-get update
apt-get upgrade -y

for s in "${software[@]}"; do
	apt-get install -y $s
done
