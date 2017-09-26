call plug#begin()
" Colorscheme/themes
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Linters
Plug 'w0rp/ale'

" Auto completion
Plug 'roxma/nvim-completion-manager'
Plug 'autozimu/LanguageClient-neovim', {'do': ':UpdateRemotePlugins'}
Plug 'othree/csscomplete.vim', {'for': ['css', 'html', 'javascript']}
Plug 'roxma/clang_complete', {'for': ['c', 'cpp']}
Plug 'roxma/nvim-cm-tern',  {'do': 'npm install', 'for': ['javascript']}

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
