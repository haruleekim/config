syntax on
filetype plugin indent on

set noswapfile
set nobackup
set number
set relativenumber
set showmode
set hlsearch
set ignorecase
set smartcase
set tabstop=4
set shiftwidth=4
set expandtab
set timeoutlen=500

let mapleader = " "

inoremap jk _
inoremap kj _
inoremap df <esc>
inoremap fd <esc>

nnoremap <c-p> <c-y>
nnoremap <c-n> <c-e>
nnoremap H ^
nnoremap L $

nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

nnoremap <leader>ev :e ~/.vimrc<cr>
nnoremap <leader>sv :source ~/.vimrc<cr>
