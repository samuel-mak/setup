" How to source
" Vim doesn't require active sourcing, it automatically sources it
" This involves first searching for the vimrc file in specific location
" One of which is the home directory
" Hence, place the vimrc file in the home directory and name it .vimrc
" Symlinks can be used

syntax off 

set number
 
" Useful for jk line jump
set relativenumber

" Use true colours
set termguicolors
			
set tabstop=8

highlight LineNr guifg=#45bca6 guibg=#000000

highlight EndOfBUffer ctermfg=909090

set noswapfile
