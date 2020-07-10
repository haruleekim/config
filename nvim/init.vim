source ~/.config/vim/.vimrc
noremap <leader>ev :e ~/.config/nvim/init.vim<cr>
noremap <leader>sv :source ~/.config/nvim/init.vim<cr>

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1
call plug#end()
