filetype plugin on

call plug#begin()
" Colorscheme/themes
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Linter/makers
Plug 'benekastah/neomake'

" Language support
Plug 'stephpy/vim-yaml', { 'for': 'yaml' }
Plug 'lervag/vimtex', { 'for': 'tex' }
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'hail2u/vim-css3-syntax', { 'for': ['css', 'html'] }
Plug 'ap/vim-css-color', { 'for': ['css', 'html', 'javascript'] }
Plug 'emmetio/emmet', { 'for': 'html' }
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
Plug 'leafgarland/typescript-vim'

" Deoplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-go', { 'do': 'make', 'for': 'go' }
Plug 'zchee/deoplete-clang', { 'for': ['c', 'cpp'] }
Plug 'zchee/deoplete-jedi', { 'for': 'python' }
Plug 'carlitux/deoplete-ternjs', { 'for': 'javascript' }
Plug 'sebastianmarkow/deoplete-rust', { 'for': 'rust' }

" Improve nvim
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'junegunn/vim-easy-align'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-fugitive'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'justinmk/vim-sneak'
call plug#end()
