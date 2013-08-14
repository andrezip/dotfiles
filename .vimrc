" vimrc
" vimrc of @andreczip
"
" seta o encoding pra utf8
set encoding=utf8

" liga a coloracao de sintaxe
syntax on

" seta o tema
colorscheme desert

" seta o tab para aparecer como 4 espaços quando digitado
set tabstop=4

" seta o tab para aparecer como 4 espaços em identacao
set shiftwidth=4

" nao expande tabs para espacos
set noexpandtab

" exibe numero das linhas
" set number

" destaca linha atual
set cursorline
highlight CursorLine guibg=#404040

" destaca coluna atual
set cursorcolumn
highlight CursorColumn guibg=#404040

" habilita backspace pra qualquer porcaria
set backspace=indent,eol,start

" cor das palavras buscadas
highlight Search guibg=#FF0000 guifg='NONE'

" mostra sempre a barra de status
set laststatus=2

" ignora cases na busca
set ignorecase

" liga a auto identacao
set autoindent
set smartindent

" exibe o modo sempre
set showmode

" nao quebra as linhas
set nowrap 

" pesquisa
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

" seta uma fonte maior no gvim
set gfn=Monospace\ 14

" seta sintase PHP syntax para extencoes 'ctp'.
au BufNewFile,BufRead *.ctp setfiletype php

" seta autocomplete no PHP
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
:imap <s-tab> <c-x><c-o>
