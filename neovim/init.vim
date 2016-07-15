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

set completeopt-=preview   " remove the preview window when we use the autocompletion

set wildmenu
set wildignorecase

set wildignore+=*.pyc,*.o
set wildignore+=.git
set wildignore+=*.jpg,*.gif,*.png,*.jpeg,*.svn,*.bmp
set wildignore+=build/*,tmp/*,bin/*
set wildignore+=*node_modules/*
" }}}

" netrw config {{{
let g:netrw_banner = 0
let g:netrw_list_hide = &wildignore
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

fun! DoRemote(arg)
  UpdateRemotePlugins
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
Plug 'altercation/vim-colors-solarized'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'Raimondi/delimitMate'
Plug 'lervag/vimtex', { 'for': 'tex' }
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'tpope/vim-fugitive'
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
Plug 'zchee/deoplete-go', { 'do': 'make', 'for': 'go' }
Plug 'zchee/deoplete-clang', { 'for': [ 'c', 'cpp' ] }
Plug 'zchee/deoplete-jedi', { 'for': 'python' }
Plug 'ervandew/supertab'
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

" vim-go {{{
" Automatically add imports
let g:go_fmt_command = "goimports"
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

" Deoplete {{{
" Use deoplete.
let g:deoplete#enable_at_startup = 1

" Latex completion (copy pasted from the doc of vimtex
if !exists('g:neocomplete#sources#omni#input_patterns')
let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.tex =
    \ '\v\\%('
    \ . '\a*cite\a*%(\s*\[[^]]*\]){0,2}\s*\{[^}]*'
    \ . '|\a*ref%(\s*\{[^}]*|range\s*\{[^,}]*%(}\{)?)'
    \ . '|hyperref\s*\[[^]]*'
    \ . '|includegraphics\*?%(\s*\[[^]]*\]){0,2}\s*\{[^}]*'
    \ . '|%(include%(only)?|input)\s*\{[^}]*'
    \ . '|\a*(gls|Gls|GLS)(pl)?\a*%(\s*\[[^]]*\]){0,2}\s*\{[^}]*'
    \ . '|includepdf%(\s*\[[^]]*\])?\s*\{[^}]*'
    \ . '|includestandalone%(\s*\[[^]]*\])?\s*\{[^}]*'
    \ . ')\m'
" }}}

" deoplete-go {{{
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
let g:deoplete#sources#go#use_cache = 1"
" }}}

" deoplete-clang {{{
let g:deoplete#sources#clang#libclang_path = "/usr/lib/libclang.so"
let g:deoplete#sources#clang#clang_header = "/usr/lib/clang"
" }}}

" deoplete-jedi {{{
let g:deoplete#sources#jedi#python_path = "/usr/bin/python"
let deoplete#sources#jedi#show_docstring = 1
" }}}

" supertab {{{
let g:SuperTabDefaultCompletionType = "<c-n>"
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
