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

" Remove search highlighting when pressing <esc>
nnoremap <esc> :noh<return><esc>

" Change background color to easily work on dark/light places.
map <Leader>bg :let &background = ( &background == "dark"? "light" : "dark" )<CR>

" move line by line visually
nmap j gj
nmap k gk

" select the last pasted text
nnoremap gp `[v`]
