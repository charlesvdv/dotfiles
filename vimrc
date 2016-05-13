" Remove the vi compatibility
set nocompatible
filetype off

set rtp+=/home/charles/.vim/bundle/Vundle.vim
call vundle#begin()

" VIM IMPROVMENT
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'Townk/vim-autoclose'
Plugin 'tpope/surround.vim'
Plugin 'tpope/vim-surround'

"LANGUAGE SUPPORT
Plugin 'Valloric/YouCompleteMe'
Plugin 'lervag/vimtex'
Plugin 'scrooloose/syntastic'

call vundle#end()

filetype plugin indent on
syntax enable " syntax highlighting 
set background=dark
colorscheme solarized

set encoding=utf8

set number "display line number

let mapleader=' '

" Solution to easily handle buffers :
" http://joshldavis.com/2014/04/05/vim-tab-madness-buffers-vs-tabs/
" I choose the #solution 1 

" This allow buffers to be hidden if you've modifier a buffer.
" When hidden, we can go to another buffer without saving the current
" buffer.
set hidden
" To open a new empty buffer
nmap <leader>T :enew<cr>
" Move to the next buffer
nmap <leader>l :bnext<CR>
" Move to the previous buffer
nmap <leader>h :bprevious<CR>
" Close the current buffer and move to the previous one
nmap <leader>bq :bp <BAR> bd #<CR>
" Show all open buffers and their status
nmap <leader>bl :ls<CR>

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab "uses spaces instead of tabs
set smarttab "let's tab key insert 'tab stops', and bksp deletes tabs
set autoindent "auto indenation
"set smartindent "intellegently detent / indent new lines

set nobackup
set nowritebackup
set noswapfile

set autoread "when the file has changed on disk, just load it. Don't ask

"Make search more sane
set ignorecase "ignore insensitive search
set smartcase "if there are an uppercase letters, become case-sensitive
set incsearch "live incremental search
set showmatch "live match highlighting
set hlsearch "highlight matches
set gdefault "use the 'g' flag by default

"Always show the status line
set laststatus=2
"Format status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Disable auto comment insertion 
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Change height of help
set helpheight=100

"-------------------------------------------------- 
" Config plugin 
"-------------------------------------------------- 

" Config YCM
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
let g:ycm_python_binary_path='/usr/bin/python'

" for latex
if !exists('g:ycm_semantic_triggers')
    let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers.tex = [
    \ 're!\\[A-Za-z]*cite[A-Za-z]*(\[[^]]*\]){0,2}{[^}]*',
    \ 're!\\[A-Za-z]*ref({[^}]*|range{([^,{}]*(}{)?))',
    \ 're!\\includegraphics\*?(\[[^]]*\]){0,2}{[^}]*',
    \ 're!\\(include(only)?|input){[^}]*'
    \ ]


" Config vimtex
" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults
" to
" 'plaintex' instead of 'tex', which results in vim-latex not being
" loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
let g:vimtex_complete_close_braces=1

" Config NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
" Close NERDTree if it's the only windows left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Config airline
let g:airline_powerline_fonts = 1 "allow powerline font
let g:airline#extensions#tabline#enabled = 1 "let see the buffer
let g:airline#extensions#tabline#fnamemod = ':t' "show only the name
let g:airline_theme='solarized'

" Config syntastic
" default config from the github repo 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
" force the syntax check for python3
let g:syntastic_python_python_exec = '/usr/bin/python'

" nerdcommenter
let NERDSpaceDelims=1
let NERDRemoveExtraSpaces=1
