" Setup Defaults
set tabstop=4 "configure tabstop size
set expandtab
set autoindent
set nowrap "remove text wrapping
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
set guioptions=
set guifont=Lucida_Console:h10:cANSI:qDRAFT
set cursorline "highlight cursor line
syntax on "enable syntax
set encoding=utf-8
set fileencoding=utf-8
set re=0
" Setup PlugIn
call plug#begin("~/vimfiles/autoload")
    Plug 'zah/nim.vim'
    Plug 'mattn/emmet-vim'
call plug#end()
" Setup colorscheme
"colorscheme PurpleAvocado
"colorscheme BloodRage
colorscheme FieryMist

