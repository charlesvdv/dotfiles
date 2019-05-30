" Add ripgrep support to nvim.
command! -bang -nargs=* Rg
    \ call fzf#vim#grep(
    \     'rg --column --color=always '.shellescape(<q-args>), 1
    \ )

" fzf.vim
nnoremap ; :Buffers<cr>
nnoremap <leader>f :Files<cr>
nnoremap <leader>r :Rg<cr>
