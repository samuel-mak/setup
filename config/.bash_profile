if [ -f $HOME/.bashrc ]; then
	source $HOME/.bashrc
else
	printf "$HOME/.bashrc does not exist"
fi
