set nocompatible        " be iMproved, required
filetype off            " required
set t_Co=256            " fixing color issues in iTerm
set encoding=utf-8      " because duh

set noswapfile          " fuck swap files
set relativenumber      " shows linenumbers relative to your current one
set ts=2 sw=2           " because tabs should be two spaces
set softtabstop=2       " ^^^
set expandtab           " to insert space characters whenever the tab key is pressed
set backspace=indent,eol,start
set autoindent
set smartindent

" All of this replaces tabs with »···
highlight SpecialKey ctermfg=1
set list
set listchars=tab:»·

" Set the runtime path to include Vundle and initialize it
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"""" GENERAL PLUGINS """"

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" file explorer plugin
Plugin 'tpope/vim-vinegar'

" colorscheme
Plugin 'chriskempson/base16-vim'

"""" LANGUAGE PLUGINS """"

" js and jsx highlighting
Plugin 'mxw/vim-jsx'
let g:jsx_ext_required = 0 " Allow JSX in normal JS files

" less editing
Plugin 'groenewege/vim-less'

" sass editing
Plugin 'tpope/vim-haml'

" Golang editing
Plugin 'fatih/vim-go'

"""" INTERFACE PLUGINS """"

" fancy-ass status line that makes me happy
Plugin 'bling/vim-airline'
let g:airline_powerline_fonts = 1 	" Maximise the pretty
set laststatus=2

" makes tmux look like airline
Plugin 'edkolev/tmuxline.vim'

"""" UTILITY PLUGINS """"

" fuzzy file finder
Plugin 'kien/ctrlp.vim'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/* " Ignore some stuff

"""" CLOSING STATEMENTS """"

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
set background=dark
colorscheme base16-ocean
