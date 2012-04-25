call pathogen#infect()

set directory=~/.vim/tmp
set backupdir=~/.vim/tmp

imap jj <Esc>
cmap bc Bclose

set nocompatible
set background=light
filetype plugin indent on
set backspace=indent,eol,start
set clipboard+=unnamed
set fileformats=unix,dos,mac
set fileencoding=utf-8
set noerrorbells
set novisualbell
set wildmenu
set wildignore=*.dll,*.o,*.obj,*.exe,*.pyc
set wildmode=list:longest
set hidden
set cmdheight=2

syntax enable
set cursorline
set incsearch
set list
set listchars=tab:>-,trail:-
set matchtime=5
set nostartofline
set number
set numberwidth=4
set ruler
set showcmd
set showmatch

if has("gui_running")
    set mousehide
    set guioptions=aegirLt
    colorscheme solarized
    set guifont=Monaco\ 11
    set lines=30
    set columns=100
endif

set expandtab
set ignorecase
set infercase
set nowrap
set shiftround
set smartcase
set shiftwidth=4
set softtabstop=4
set tabstop=8

autocmd BufRead,BufNewFile Gemfile set ft=ruby
autocmd FileType ruby set sw=2 sts=2
