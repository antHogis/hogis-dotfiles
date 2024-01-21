" Not vi-compatible
set nocompatible
filetype off

" vim-plug
call plug#begin()

" Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

call plug#end()

" Line numbering
set nu
set relativenumber

" Syntax highlighting
syntax on

" Clipboard
set clipboard=unnamedplus

" Tab
set expandtab
set smarttab
set autoindent
set shiftwidth=4
set softtabstop=0
set tabstop=4

" Window title
set title

" Custom Mappings
map <C-n> :NERDTreeToggle<CR>

