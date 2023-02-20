"Setup Defaults
set expandtab
set autoindent
set tabstop=4
set shiftwidth=4
set nowrap
set guioptions=
set guifont=Modern_DOS_9x16:h11:cANSI:qDRAFT
set cursorline
set cursorcolumn
set t_Co=
set t_md=
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

"" Steve Hall wrote this function for me on vim@vim.org
" See :help attr-list for possible attrs to pass
function! Highlight_remove_attr(attr)
    " save selection registers
    new
    silent! put

    " get current highlight configuration
    redir @x
    silent! highlight
    redir END
    " open temp buffer
    new
    " paste in
    silent! put x

    " convert to vim syntax (from Mkcolorscheme.vim,
    "   http://vim.sourceforge.net/scripts/script.php?script_id=85)
    " delete empty,"links" and "cleared" lines
    silent! g/^$\| links \| cleared/d
    " join any lines wrapped by the highlight command output
    silent! %s/\n \+/ /
    " remove the xxx's
    silent! %s/ xxx / /
    " add highlight commands
    silent! %s/^/highlight /
    " protect spaces in some font names
    silent! %s/font=\(.*\)/font='\1'/

    " substitute bold with "NONE"
    execute 'silent! %s/' . a:attr . '\([\w,]*\)/NONE\1/geI'
    " yank entire buffer
    normal ggVG
    " copy
    silent! normal "xy
    " run
    execute @x

    " remove temp buffer
    bwipeout!

    " restore selection registers
    silent! normal ggVGy
    bwipeout!
endfunction
autocmd BufNewFile,BufRead * call Highlight_remove_attr("bold") 
call Highlight_remove_attr("bold") 
