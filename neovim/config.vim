set encoding=utf8

" No annoying backup file
set nobackup noswapfile

" Local directories
set undofile undodir=~/.config/nvim/undodir

" No annoying error sound but ok for visual
set noerrorbells      " no error sound
set visualbell        " visual error

set tabstop=4              " number of visual spaces per TAB
set shiftwidth=4
set softtabstop=4          " number of spaces in tab when editing
set expandtab              " tabs are spaces

set number                 " show line numbers
set showcmd                " show command in the bottom bar
set cursorline             " highlight the current line

set ignorecase
set smartcase              " if we search with an uppercase, don't ignore case
set gdefault               " use the global option by default
set hlsearch               " highlight all the matches
set incsearch              " live incremental search

set linebreak              " vim don't break at the middle of a word when wrapping text
set textwidth=100          " add a line break at 125 characters
set formatoptions+=t       " force text wrapping

set pastetoggle=<F2>       " disable the autointentation when pasting data

set autoread               " reload the file when it was changed outside Vim

set clipboard+=unnamedplus " use the system clipboard

set foldmethod=indent      " fold based on intent level
set foldnestmax=10         " max 10 depht
set foldenable             " don't fold files by default on open
set foldlevelstart=10

set completeopt-=preview   " remove the preview window when we use the autocompletion

set wildmenu
set wildignorecase

set wildignore+=*.pyc,*.o
set wildignore+=.git/*
set wildignore+=*.jpg,*.gif,*.png,*.jpeg,*.svn,*.bmp
set wildignore+=build/*,tmp/*,bin/*
set wildignore+=*node_modules/*

" Neovim specifics
set inccommand=nosplit
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1 " change cursor shape when in insert mode

" Configure termcolor
set background=dark
colorscheme gruvbox
