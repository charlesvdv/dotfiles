" airline config
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1     " let see the buffer
let g:airline#extensions#tabline#fnamemod=':t' " show only the name
let g:airline_theme='gruvbox'

" NerdCommenter config
let NERDSpaceDelims=1
let NERDRemoveExtraSpaces=1

" NerdTree config
let NERDTreeShowHidden=1 " Show hidden files by default
let NERDTreeQuitOnOpen=1 " Quit when a file is opened
map <C-n> :NERDTreeToggle<cr>
" Close NerdTree if it's the only windows left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" EasyAlign config
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" fzf config
" Search a file in the current path
map <C-p> :Files<cr>
" Search code in the current path
map <C-l> :Ag<cr>

" Neomake improved C support
let g:neomake_c_clang_args = ['-fsyntax-only', '-Wall', '-Wextra',
                            \ '-I../include/', '-I*/include/', '-Iinclude/']
let g:neomake_c_enabled_makers = ['clang']

" Ultisnips config
let g:UltiSnipsExpandTrigger='<C-b>'
let g:UltiSnipsJumpForwardTrigger='<C-b>'
let g:UltisnipsJumpBackwardTrigger='<C-B>'
