" vimrc
"
" vimrc of andrezip (Andre Costa)
"
" http://www.hardcode.com.br
"
" Foloww the GitHub:
" https://github.com/andrezip/dotfiles
"
" Copy, edit and use.
"

syntax on

" turn off compatility with vi and modelines 
set nocompatible
set modelines=0

" no backups files
set nobackup       "no backup files
set nowritebackup  "only in case you don't want a backup file while editing
set noswapfile     "no swap files
set ruler	       "show the cursor position all the time

" tab settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Switch wrap off for everything
set nowrap

" Always display the status line
set laststatus=2

" Search
set incsearch       " Increment search
set hlsearch        " Highligth search :)
set ignorecase

"Options for selected blocks are reselecionados after indentations.
"It really helps when it comes to indenting large blocks and confused =)
vnoremap < <gv
vnoremap > >gv
