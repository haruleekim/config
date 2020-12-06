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

nohl

" Cursor shapes
let &t_SI.="\e[5 q"
let &t_SR.="\e[4 q"
let &t_EI.="\e[1 q"

" MacOS dark mode supports
if system("defaults read -g AppleInterfaceStyle") =~ '^Dark'
  set background=dark
else
  set background=light
endif

" Default filetype
set filetype=zsh

" Load keymap
source $HOME/.vimrc.keymap

