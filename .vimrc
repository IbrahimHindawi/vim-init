"Setup Defaults
set expandtab
set autoindent
set tabstop=4
set shiftwidth=4
set nowrap
set guioptions=
set guifont=Courier_New:h20:cANSI:qDRAFT          
set cursorline
syntax on
set encoding=utf-8
set fileencoding=utf-8
set re=0
call plug#begin("~/.vim/autoload")
    Plug 'zah/nim.vim'
    Plug 'mattn/emet-vim'
    Plug 'daviddosomething/vim-colors/meh'
    Plug 'nikolvs/vim-sunbather'
call plug#end()
"" Setup Color
colorscheme FieryMist

