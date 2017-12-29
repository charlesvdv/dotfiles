call plug#begin()
" Colorscheme/themes
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'

" Linters
Plug 'w0rp/ale'

" Auto completion
Plug 'roxma/nvim-completion-manager'
Plug 'autozimu/LanguageClient-neovim', {'do': ':UpdateRemotePlugins'}
Plug 'othree/csscomplete.vim', {'for': ['css', 'html', 'javascript']}
Plug 'roxma/ncm-clang', {'for': ['c', 'cpp']}
Plug 'roxma/nvim-cm-tern',  {'do': 'npm install', 'for': ['javascript']}
Plug 'roxma/ncm-elm-oracle', {'for': ['elm']}

" Snippets
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

" Language support
Plug 'rust-lang/rust.vim', {'for': 'rust'}
Plug 'lervag/vimtex', {'for': 'tex'}
Plug 'stephpy/vim-yaml', {'for': 'yaml'}
Plug 'cespare/vim-toml', {'for': 'toml'}
Plug 'sukima/xmledit', {'for': ['xml', 'html']}
Plug 'pangloss/vim-javascript', {'for': 'javascript'}
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
