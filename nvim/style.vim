if (has("gui_vimr"))
  set termguicolors
  let g:seoul256_background = 236
  let g:seoul256_light_background = 253
else
  let g:seoul256_background = 233
  let g:seoul256_light_background = 256
endif

let g:airline_theme='seoul256'
let g:one_allow_italics = 1

function! SetDarkColorscheme()
  set background=dark
  colorscheme seoul256
endfunction

function! SetLightColorscheme()
  set background=light
  colorscheme seoul256-light
endfunction

function! SetColorscheme(background)
  if a:background == 'dark'
    call SetDarkColorscheme()
  endif

  if a:background == 'light'
    call SetLightColorscheme()
  endif
endfunction

augroup watch_background
  autocmd!
  autocmd OptionSet background call SetColorscheme(v:option_new) | execute 'AirlineRefresh'
augroup end

if system("defaults read -g AppleInterfaceStyle") =~ '^Dark'
  call SetDarkColorscheme()
else
  call SetLightColorscheme()
endif
