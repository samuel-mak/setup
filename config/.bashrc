
# append don't overwrite .bash_history
shopt -s histappend

# History 
HISTFILESIZE=2000
HISTSIZE=1000


# Set prompt format and colour
PS1="\[\e[1;32m\]\u@\h:\[\e[1;37m\]\w$ \[\e[0m\]"
echo -en "\033[?8c"


# Colour name to hex map for TTY
#if [ "$TERM" = "linux" ]; then
echo -en "\e]P0000000" #black
echo -en "\e]P1BC4545" #darkred
echo -en "\e]P245BCA6" #darkgreen
echo -en "\e]P39C9C9C" #brown
echo -en "\e]P49C9C9C" #darkblue
echo -en "\e]P59C9C9C" #darkmagenta
echo -en "\e]P69C9C9C" #darkcyan
echo -en "\e]P79C9C9C" #lightgrey
echo -en "\e]P8666666" #darkgrey
echo -en "\e]P9BC4545" #red
echo -en "\e]PA45BCA6" #green
echo -en "\e]PB808080" #yellow
echo -en "\e]PC9C9C9C" #blue
echo -en "\e]PD9C9C9C" #magenta
echo -en "\e]PE9C9C9C" #cyan
echo -en "\e]PF9C9C9C" #white
clear
#fi

export EDITOR='vim'
export VISUAL='vim'
export GIT_EDITOR='vim'

export MANPAGER=less

