set nocompatible              	" be iMproved, required
filetype off                  	" required
set t_Co=256					" fixing color issues in iTerm
set encoding=utf-8

" Whitespace etc.
set relativenumber
set ts=4 sw=4			" Sets tabs to 4 spaces

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"""" GENERAL PLUGINS """"

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" the baller-ass status line
Plugin 'bling/vim-airline'
" the git status line
Plugin 'airblade/vim-gitgutter'
" the gotham color scheme
Plugin 'whatyouhide/vim-gotham'
" trailing whitespace management
Plugin 'bronson/vim-trailing-whitespace'

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

"""" INTERFACE PLUGINS """"

" NERD Tree - tree browser
Plugin 'scrooloose/nerdtree'

"""" COMMAND PLUGINS """"

" CtrlP
Plugin 'kien/ctrlp.vim'
" Emmet.io
Plugin 'mattn/emmet-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"""" AIRLINE CONFIGURATION """"

" Put your non-Plugin stuff after this line
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
set laststatus=2		" ensures that airline always visible

"""" MISC TWEAKS """"

" More natural splitting
set splitbelow
set splitright
" Open nerd tree on startup
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Auto-close nerd tree when its the last window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | en

"""" KEY RE-MAPPINGS """"

" Newlines oo, 00
nmap oo o<Esc>j
" Open NERD tree with Ctrl + N
map <C-n> :NERDTreeToggle<CR>

syntax enable
colorscheme gotham
set backspace=indent,eol,start
