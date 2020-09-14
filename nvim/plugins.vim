call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" git
Plug 'tpope/vim-fugitive'

" automatic IME switching
Plug 'rlue/vim-barbaric'

" vim airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" themes
Plug 'junegunn/seoul256.vim'

" rust
Plug 'rust-lang/rust.vim'

call plug#end()

