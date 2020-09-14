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
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set hlsearch
set hidden
set cmdheight=2
set showmode
set shortmess+=c
set signcolumn=yes
set timeoutlen=500
set ttimeoutlen=0
set updatetime=300

let g:nvim_config_root = stdpath('config')
let g:config_file_list = [
\ 'plugins.vim',
\ 'keymap.vim',
\ 'coc.vim',
\ 'smooth-scroll.vim',
\ 'style.vim',
\]

for file in g:config_file_list
  execute 'source ' . g:nvim_config_root . '/' . file
endfor

nohl
if exists(':AirlineRefresh')
  silent exec 'AirlineRefresh'
endif
