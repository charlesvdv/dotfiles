call plug#begin()
" Colorscheme/themes
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'

" Linters
Plug 'w0rp/ale'

" Auto completion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'Shougo/neco-vim', { 'for':  'vim' }

" Snippets
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

" Language support
Plug 'lervag/vimtex', {'for': 'tex'}
Plug 'sukima/xmledit', {'for': ['xml', 'html']}
Plug 'mesonbuild/meson', { 'rtp': 'syntax-highlighting/vim' }
Plug 'sheerun/vim-polyglot'

" Keybindings
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'scrooloose/nerdcommenter'

" Navigation
Plug 'justinmk/vim-dirvish'
Plug 'junegunn/fzf', {'dir': '$HOME/.fzf', 'do': './install --all'}
Plug 'junegunn/fzf.vim'

Plug 'Shougo/echodoc.vim'
Plug 'tpope/vim-fugitive'
" Automatic option for tab/spaces
Plug 'tpope/vim-sleuth'
" UNIX cmd in vim
Plug 'tpope/vim-eunuch'
Plug 'jiangmiao/auto-pairs'
call plug#end()
