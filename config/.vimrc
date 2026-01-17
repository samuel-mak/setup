" ----------------------------------------------------------------------------
" This .vimrc file is used by Vim for its configuration. Upon starting Vim,
" Vim automatically looks for .vimrc in specific locations, one of which is
" ~/, and sources the first .vimrc found.
" 	
" The .vimrc file can contain all the vim commands (those followed by a colon)
" and options (those following a command). 
"
" All vim information can be found in /usr/share/vim/vim91/doc/
" All vim commands and options can be found in index.txt and options.txt
" respectively.
" ----------------------------------------------------------------------------
"hjjjjhhhhhhhhhhhhhhhhhjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj


" Use a 16-console-colour system (colors defined in .bashrc)
set t_Co=16

" Use console colours
set notermguicolors

" Show line number
set number

" Set line number to be relative to the line the cursor is on
set relativenumber

" Filetype plugins
" The filetype plugin
filetype plugin off

" Always use tabs of 8 spaces in width	
" I can always replace tabs with spaces (or vice versa) if necessary if
" collaborators insist
set tabstop=8

" Text colour in normal mode
highlight Normal ctermfg=15 ctermbg=0

" Line number colour 
highlight LineNr ctermfg=10 ctermbg=0

" Reverse the foreground and background colour when in visual select
" ctermfg=0 doesn't work properly in TTY but works in tmux in TTY
" This is a linux console colour quirk that I can only accept
" see https://unix.stackexchange.com/questions/363101
highlight Visual ctermfg=0 ctermbg=15

" Highlight text from the 81st character on the line
" ctermfg=0 doesn't work properly in TTY but works in tmux in TTY
" This is a linux console colour quirk that I can only accept
" see https://unix.stackexchange.com/questions/363101
highlight OverLength ctermfg=0 ctermbg=15
"match OverLength /\%81v.\+/ " for all characters after the 80th col
" Only for the character at the 81st col (this may suffice)
match OverLength /\%81v/

" End of buffer ~ colour
highlight EndOfBuffer ctermfg=15

" No swap files
" I trust my system (i.e. Debian) and myself
" I don't trust my power supply as much though but see what happens
set noswapfile

" Status line
" Status line format
set statusline=%F

" Status line colour
highlight StatusLine ctermfg=0 ctermbg=15

" Make status line persists
set laststatus=2

" Syntax highlighting
syntax on

" Syntax colour definition
" I only desire colours for comments
highlight Boolean ctermfg=15 ctermbg=0
highlight Character ctermfg=15 ctermbg=0
highlight Comment ctermfg=8 ctermbg=0
highlight Conditional ctermfg=15 ctermbg=0
highlight Constant ctermfg=15 ctermbg=0
highlight Debug ctermfg=15 ctermbg=0
highlight Define ctermfg=15 ctermbg=0
highlight Delimiter ctermfg=15 ctermbg=0
highlight Error ctermfg=15 ctermbg=0
highlight Exception ctermfg=15 ctermbg=0
highlight Float ctermfg=15 ctermbg=0
highlight Function ctermfg=15 ctermbg=0
highlight Identifier ctermfg=15 ctermbg=0
highlight Ignore ctermfg=15 ctermbg=0
highlight Include ctermfg=15 ctermbg=0
highlight Keyword ctermfg=15 ctermbg=0
highlight Label ctermfg=15 ctermbg=0
highlight Macro ctermfg=15 ctermbg=0
highlight Number ctermfg=15 ctermbg=0
highlight Operator ctermfg=15 ctermbg=0
highlight PreCondit ctermfg=15 ctermbg=0
highlight PreProc ctermfg=15 ctermbg=0
highlight Repeat ctermfg=15 ctermbg=0
highlight Special ctermfg=15 ctermbg=0
highlight SpecialChar ctermfg=15 ctermbg=0
highlight SpecialComment ctermfg=15 ctermbg=0
highlight Statement ctermfg=15 ctermbg=0
highlight StorageClass ctermfg=15 ctermbg=0
highlight String ctermfg=15 ctermbg=0
highlight Structure ctermfg=15 ctermbg=0
highlight Tag ctermfg=15 ctermbg=0
highlight Todo ctermfg=15 ctermbg=0
highlight Type ctermfg=15 ctermbg=0
highlight Typedef ctermfg=15 ctermbg=0
highlight Underlined ctermfg=15 ctermbg=0
