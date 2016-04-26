if exists("g:vundle_install_plugin")
  Plugin 'altercation/vim-colors-solarized'
  finish
endif


syntax enable
set background=dark
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif
if $TERM_PROGRAM == 'Apple_Terminal'
  let g:solarized_termcolors = &t_Co
  let g:solarized_termtrans = 1
endif
let g:solarized_termcolors=256

try
  colorscheme solarized
catch /^Vim\%((\a\+)\)\=:E185/
    colorscheme default
endtry
