set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

inoremap <silent><expr> <tab>
\ pumvisible() ? "\<c-n>" :
\ <sid>check_backspace() ? "\<tab>" :
\ coc#refresh()
inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<c-h>"
function! s:check_backspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-space> coc#refresh()

if exists('*complete_info')
  inoremap <silent><expr> <cr> complete_info()["selected"] != "-1" ? "\<c-y>" : "\<c-g>u\<cr>\<c-r>=coc#on_enter()\<cr>"
else
  inoremap <silent><expr> <cr> pumvisible() ? "\<c-y>" : "\<c-g>u\<cr>\<c-r>=coc#on_enter()\<cr>"
endif

nmap <silent> [g <plug>(coc-diagnostic-prev)
nmap <silent> ]g <plug>(coc-diagnostic-next)

nmap <silent> gd <plug>(coc-definition)
nmap <silent> gy <plug>(coc-type-definition)
nmap <silent> gi <plug>(coc-implementation)
nmap <silent> gr <plug>(coc-references)

nmap <silent> <leader>j :call <sid>show_documentation()<cr>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')

nmap <silent> <leader>rn <plug>(coc-rename)
xmap <silent> <leader>l <plug>(coc-format-selected)
nmap <silent> <leader>l <plug>(coc-format)

xmap <silent> <leader>t  <plug>(coc-codeaction-selected)
nmap <silent> <leader>t  <plug>(coc-codeaction-selected)
nmap <silent> <leader>ac  <plug>(coc-codeaction)
nmap <silent> <leader>qf  <plug>(coc-fix-current)

xmap if <plug>(coc-funcobj-i)
omap if <plug>(coc-funcobj-i)
xmap af <plug>(coc-funcobj-a)
omap af <plug>(coc-funcobj-a)
xmap ic <plug>(coc-classobj-i)
omap ic <plug>(coc-classobj-i)
xmap ac <plug>(coc-classobj-a)
omap ac <plug>(coc-classobj-a)

nmap <silent> <c-s> <plug>(coc-range-select)
xmap <silent> <c-s> <plug>(coc-range-select)

command! -nargs=0 Format :call CocAction('format')
command! -nargs=? Fold :call CocAction('fold', <f-args>)
command! -nargs=0 OR   :call CocAction('runCommand', 'editor.action.organizeImport')

nmap <space>e <cmd>CocCommand explorer<cr>
