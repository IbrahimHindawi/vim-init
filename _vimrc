filetype off
set shellslash
set rtp+=~/vimfiles/bundle/Vundle.vim
call vundle#begin('~/vimfiles/bundle')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line




"Setup Defaults
set expandtab
set autoindent
set tabstop=4
set shiftwidth=4
set nowrap
set guioptions=
" set guifont=Terminal
set guifont=Terminal:h10
set cursorline
set cursorcolumn
set t_Co=
set t_md=
syntax on
set encoding=utf-8
set fileencoding=utf-8
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
