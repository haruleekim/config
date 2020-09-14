syntax on
filetype plugin indent on

set noswapfile
set nobackup
set nowritebackup
set number
set relativenumber

set ignorecase
set smartcase

set wildignorecase

set expandtab
set tabstop=2
set shiftwidth=2

set autoindent
set smartindent

set hlsearch

set hidden
set cmdheight=2
set showmode

let mapleader = " "

nohl
nnoremap <silent> <c-c> <c-c><cmd>nohl<cr>

inoremap jk _
inoremap Jk _
cnoremap jk _
cnoremap Jk _

inoremap kj _
inoremap Kj _
cnoremap kj _
cnoremap Kj _

inoremap df <esc>
inoremap Df <esc>
cnoremap df <esc>
cnoremap Df <esc>

inoremap fd <esc>
inoremap Fd <esc>
cnoremap fd <esc>
cnoremap Fd <esc>

noremap <c-p> <c-y>
noremap <c-n> <c-e>
noremap H ^
noremap L $

noremap <silent> - <cmd>botright sp<cr>
noremap <silent> \ <cmd>botright vs<cr>

noremap <c-h> <c-w>h
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-l> <c-w>l

let &t_SI.="\e[5 q"
let &t_SR.="\e[4 q"
let &t_EI.="\e[1 q"
