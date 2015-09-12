" set line numbers
set nu
" syntax highlighting
syntax enable
" in file searches
set ignorecase
" highlight as pattern is typed
set incsearch
" at start of line tab inserts shiftwidth spaces, bs deletes
set smarttab
" get access to system clipboard...sort of / maybe
set clipboard=unnamed
" make backspace work like most other apps
set backspace=2
" make columns and stuff
set cc=80
" allow switching between unsaved buffers without !, etc
set hidden
" refresh buffers when they change externally
set autoread
" mouse support
set mouse=a
" i forget
set nocompatible

" visualize whitespace
set listchars=tab:▸\ ,eol:¬,trail:·
nmap <leader>l :set list!<CR>

" leave me alone, swapfiles
set noswapfile

" cool
execute pathogen#infect()

" solarized
set t_Co=256
set background=dark
colorscheme solarized
call togglebg#map("<F5>")

" file jumping
set suffixesadd=.js,.jsx

" indentation
set tabstop=2
set softtabstop=2
set shiftwidth=2

" cool
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" kill trailing whitespace
:nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
