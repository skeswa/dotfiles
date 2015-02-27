set nocompatible                " be iMproved, required
filetype off                    " required
set t_Co=256                    " fixing color issues in iTerm
set encoding=utf-8

" Whitespace etc.
set relativenumber
set ts=4 sw=4                   " Sets tabs to 4 spaces
set softtabstop=4               " Control how many columns vim uses when you hit Tab in insert mode
set expandtab                   " hitting Tab in insert mode will produce the appropriate number of spaces
set backspace=indent,eol,start  " defaults to eol,start iirc

" Special tab formatting
highlight SpecialKey ctermfg=1  " All of this replaces tabs with »···
set list
set listchars=tab:»·

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"""" GENERAL PLUGINS """"

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"""" COLOR SCHEMES """"

" Spacegray color scheme
Plugin 'skeswa/Spacegray.vim'

"""" LANGUAGE PLUGINS """"

" JS editing
Plugin 'pangloss/vim-javascript'
" JSX editing
Plugin 'mxw/vim-jsx'
" LESS editing
Plugin 'groenewege/vim-less'
" Markdown editing
Plugin 'tpope/vim-markdown'
" Coffeescript editing
Plugin 'kchmck/vim-coffee-script'
" Rust editing
Plugin 'wting/rust.vim'
Plugin 'cespare/vim-toml'
" Sass editing
Plugin 'tpope/vim-haml'
" Golang editing
Plugin 'fatih/vim-go'

"""" INTERFACE PLUGINS """"

" NERD Tree - tree browser
Plugin 'scrooloose/nerdtree'
" the baller-ass status line
Plugin 'skeswa/lightline.vim'
" the git status line
Plugin 'airblade/vim-gitgutter'
" trailing whitespace management
Plugin 'bronson/vim-trailing-whitespace'

"""" COMMAND PLUGINS """"

" CtrlP
Plugin 'kien/ctrlp.vim'
" Emmet.io
Plugin 'mattn/emmet-vim'

" All of your Plugins must be added before the following line
call vundle#end()               " required
filetype plugin indent on       " required

"""" LIGHTLINE CONFIGURATION """"

" Put your non-Plugin stuff after this line
let g:lightline = {
    \ 'colorscheme': 'spacegray'
    \ }
set laststatus=2                " ensures that airline always visible

"""" MISC TWEAKS """"

" More natural splitting
set splitbelow
set splitright
" Open nerd tree on startup if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Auto-close nerd tree when its the last window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | en
" Ctrl+P plugin needs to ignore some folders
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

"""" CUSTOM COMMANDS """

" Kill all the trailing whitespace
command TrimWhitespace :%s/\s\+$//

"""" KEY RE-MAPPINGS """"

" Newlines oo
nmap oo o<Esc>
" Open NERD tree with Ctrl + N
map <C-n> :NERDTreeToggle<CR>

syntax enable
colorscheme spacegray
set backspace=indent,eol,start
