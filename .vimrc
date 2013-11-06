" vimrc
" vimrc of @andreczip
"
set nocompatible
filetype off

" Vundle
" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
 " required!
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'scrooloose/nerdtree'

filetype plugin indent on     " required!

set encoding=utf8
syntax on
set nowrap

" set theme
colorscheme desert

" set tabs
set tabstop=4
set shiftwidth=4
set noexpandtab

" show lines
" set number

" enabled backspace
set backspace=indent,eol,start

" color of row fetched
highlight Search guibg=#FF0000 guifg='NONE'

" always shows the status bar
set laststatus=2

" ignores cases in search
set ignorecase

" alloy auto indentation
set autoindent
set smartindent

" search
set incsearch
set hlsearch
set ignorecase

" Highlight trailing whitespace in vim on non empty lines, but not while
" typing in insert mode!
highlight ExtraWhitespace ctermbg=red guibg=Brown
au ColorScheme * highlight ExtraWhitespace guibg=red
au BufEnter * match ExtraWhitespace /\S\zs\s\+$/
au InsertEnter * match ExtraWhitespace /\S\zs\s\+\%#\@<!$/
au InsertLeave * match ExtraWhiteSpace /\S\zs\s\+$/

" Arrow syntax PHP syntax for extensions 'ctp'.
au BufNewFile,BufRead *.ctp setfiletype php

" set autocomplete for PHP
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
:imap <s-tab> <c-x><c-o>
