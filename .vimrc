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
    Plug 'vim-airline/vim-airline'
call plug#end()
"" Setup Color
colorscheme FieryMist
autocmd BufNewFile,BufRead *.asm set ft=masm
map <F5> :!bbuild.bat<CR>
map <F6> :!bexe.bat<CR>
nmap <C-l> :tabnext<CR>
nmap <C-h> :tabprev<CR>

" syntax on
" filetype off
" set shellslash
" set rtp+=~/vimfiles/bundle/Vundle.vim
" call vundle#begin('~/vimfiles/bundle')
"     Plugin 'VundleVim/Vundle.vim'
"     Plugin 'https://github.com/ycm-core/YouCompleteMe.git'
"     Plugin 'vim-airline/vim-airline'
" call vundle#end()            
" filetype plugin indent on   
" set expandtab
" set autoindent
" set tabstop=4
" set shiftwidth=4
" set nowrap
" set guioptions=
" set guifont=Cascadia_Mono_SemiLight:h10:W350:cANSI:qDRAFT          
" set cursorline
" set encoding=utf-8
" set fileencoding=utf-8
" set re=0
" colorscheme FieryMist
" 
