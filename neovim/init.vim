" Options {{{
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

set wildmenu
set wildignorecase

set wildignore+=*.pyc
set wildignore+=.git
set wildignore+=*.jpg,*.gif,*.png,*.jpeg,*.svn,*.bmp
set wildignore+=build/*,tmp/*,bin/*
set wildignore+=*node_modules/*
" }}}

" Automatic action {{{
" Remove trailing whitespace on save
autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()
" Remove search highlighting when we are done searching
" TODO: highlighting still appears sometimes...
autocmd InsertEnter * :noh | redraw
autocmd InsertLeave * :noh | redraw
" }}}

" Specific function {{{
" Remove trailing whitespace and restore cursor position
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
" }}}

" Mappings {{{
" Map leader to space
let mapleader=' '

" handle buffers
set hidden " don't need to save the current buffer to quit it
nmap <leader>T :enew<cr> " open a new buffer
nmap <leader>l :bnext<cr> " move to next buf
nmap <leader>h :bprev<cr> " move to previous buf
nmap <leader>bq :bp <bar> bd #<cr> " close the current buffer and move to the previous one
nmap <leader>bl :ls<cr> " list all currents buffers

" disable the arrow keys
" TODO: find better function than <nop>
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" add shortcut for <esc>
imap jj <esc>

" insert a new line without going in insert mode
nmap <cr> o<esc>

" This unsets the "last search pattern" register by hitting return
" nnoremap <silent> <cr> <bar> :nohlsearch<cr>

" }}}

" Plugins {{{
" Enable plugin
filetype plugin on

call plug#begin()
Plug 'benekastah/neomake'
Plug 'stephpy/vim-yaml', { 'for': 'yaml' }
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'altercation/vim-colors-solarized'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'Raimondi/delimitMate'
Plug 'lervag/vimtex', { 'for': 'tex' }
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'tpope/vim-fugitive'
call plug#end()
" }}}

" Airline {{{
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1     " let see the buffer
let g:airline#extensions#tabline#fnamemod=':t' " show only the name
let g:airline_theme='solarized'
" }}}

" NerdCommenter {{{
let NERDSpaceDelims=1
let NERDRemoveExtraSpaces=1
" }}}

" NerdTree {{{
let NERDTreeShowHidden=1 " Show hidden files by default
let NERDTreeQuitOnOpen=1 " Quit when a file is opened
map <C-n> :NERDTreeToggle<cr>
" Close NerdTree if it's the only windows left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" }}}

" EasyAlign {{{
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
" }}}

" Fzf {{{
" Search a file in the current path
map <C-p> :Files<cr>
" Search code in the current path
map <C-l> :Ag<cr>
" }}}

" Neomake {{{
" Autostart file check after each save
autocmd! BufWritePost * Neomake
" }}}

" Colorscheme {{{
set background=dark
" Change the background color (useful when outside/inside)
map <Leader>bg :let &background = ( &background == "dark"? "light" : "dark" )<CR>

colorscheme solarized
" }}}

" Neovim specific {{{
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1 " change cursor shape when in insert mode
" }}}
