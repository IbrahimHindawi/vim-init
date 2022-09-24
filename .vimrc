"Setup Defaults
set expandtab
set autoindent
set tabstop=4
set shiftwidth=4
set nowrap
set guioptions=
set guifont=Consolas:h10
set cursorline
set cursorcolumn
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
autocmd BufNewFile,BufRead *.asm set ft=masm
map <F5> :!bbuild.bat<CR>
map <F6> :!bexe.bat<CR>
nmap <C-l> :tabnext<CR>
nmap <C-h> :tabprev<CR>
