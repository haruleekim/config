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

noremap <c-p> <c-y>
noremap <c-n> <c-e>
noremap H ^
noremap L $

noremap <c-h> <c-w>h
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-l> <c-w>l

noremap <leader>ev :e ~/.vimrc<cr>
noremap <leader>sv :source ~/.vimrc<cr>
