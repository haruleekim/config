let mapleader = " "

noremap! jk _
noremap! Jk _

noremap! kj _
noremap! Kj _

noremap! df <esc>
noremap! Df <esc>

noremap! fd <esc>
noremap! Fd <esc>

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
tnoremap <c-h> <c-w>h
tnoremap <c-j> <c-w>j
tnoremap <c-k> <c-w>k
tnoremap <c-l> <c-w>l

noremap <leader>w <cmd>w<cr>
noremap <leader>q <cmd>q<cr>
noremap <leader>wq <cmd>wq<cr>
noremap <leader>wqa <cmd>wqa<cr>

nnoremap <silent> <c-c> <c-c><cmd>nohl<cr>

noremap ' :Files<cr>

noremap <silent> <leader>ev <cmd>exec 'CocCommand explorer ' . stdpath('config')<cr><cmd>echom 'Configuration directory opened'<cr>
noremap <silent> <leader>sv <cmd>exec 'source ' . stdpath('config') . '/init.vim'<cr><cmd>echom 'Configuration reloaded'<cr>

