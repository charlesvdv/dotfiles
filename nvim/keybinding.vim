let g:mapleader = ' '

" Buffer movements
nmap <leader>l :bnext<cr>
nmap <leader>h :bprev<cr>
nmap <leader>d :bdelete<cr>

" Disable arrow keys
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

" Remove search highlighting when pressing <esc>
nnoremap <esc> :noh<return><esc>

" Change background color to easily work on dark/light places.
map <Leader>bg :let &background = ( &background == "dark"? "light" : "dark" )<CR>

" move line by line visually
nmap j gj
nmap k gk

" select the last pasted text
nnoremap gp `[v`]

" Neosnippet
imap <c-s>     <Plug>(neosnippet_expand_or_jump)
vmap <c-s>     <Plug>(neosnippet_expand_or_jump)
vmap <c-s> <Plug>(neosnippet_expand_target)
