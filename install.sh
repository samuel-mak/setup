#!/usr/bin/env bash

software=("git"  "vim"
	 "curl")

apt-get update
apt-get upgrade -y

for s in "${software[@]}"; do
	apt-get install -y $s
done
