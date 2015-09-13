" stuff required for Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" all plugins go between **HERE**
Plugin 'VundleVim/Vundle.vim'
Plugin 'marcweber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'justinj/vim-react-snippets'
Plugin 'kien/ctrlp.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'altercation/vim-colors-solarized'
" the cost of not using emacs for clojure:
Plugin 'guns/vim-clojure-static'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-sexp-mappings-for-regular-people'
Plugin 'guns/vim-sexp'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
" and **HERE**
call vundle#end()

" also required for Vundle
filetype plugin indent on

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

" visualize whitespace
set listchars=tab:▸\ ,eol:¬,trail:·
nmap <leader>l :set list!<CR>

" leave me alone, swapfiles
set noswapfile

" turn on rainbow parentheses
au VimEnter * RainbowParenthesesToggle

" solarized
set t_Co=256
set background=dark
colorscheme solarized
call togglebg#map("<F6>")

" file jumping
set suffixesadd=.js,.jsx

" indentation
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" cool
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" kill trailing whitespace
:nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
