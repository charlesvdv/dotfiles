" Remove trailing whitespace and restore cursor position
function! <SID>StripTrailingWhitespaces()
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfunction

autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

autocmd BufWritePost * Neomake

autocmd BufNewFile,BufRead *.rs set ft=rust
autocmd BufNewFile,BufRead *.tex set ft=tex
