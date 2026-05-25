# Prompt format
PS1='\[\e[38;2;84;180;165m\]\u@\h:\w\$ \[\e[0m\]'



# Paths
## System
export PATH="$PATH:/c/Windows/System32"
export PATH="$PATH:/usr/bin"
## Windows
export PATH="$PATH:/c/Windows/System32/WindowsPowerShell/v1.0"
export PATH="$PATH:/c/Program Files/flexMIRT 3.7"
export PATH="$PATH:/c/Program Files/R/R-4.6.0/bin"



# Variables
export MSYS2_PATH_TYPE=strict
export TERM=xterm-256color
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim
export GIT_EDITOR=/usr/bin/vim
export MANPAGER=/usr/bin/less



# Functions
xdg-open() {
	start "" "$1"
}

taskkill() {
	/c/Windows/System32/taskkill.exe "//IM" "$1" "//F"
}
# $1 is the name of the binary to be terminated
# e.g. `taskkill firefox.exe` terminates all processes under firefox.exe
