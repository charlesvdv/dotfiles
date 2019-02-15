" Configuration for `autozimu/LanguageClient-neovim` plugin
let g:LanguageClient_serverCommands = {
    \ 'cpp': ['cquery', '--log-file="/tmp/cquery.log"'],
    \ 'c': ['cquery', '--log-file="/tmp/cquery.log"'],
    \ 'go': ['go-langserver', '-diagnostics', '-gocodecompletion'],
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'typescript': ['javascript-typescript-stdio'],
    \ 'python': ['pyls'],
    \ 'rust': ['rustup', 'run', 'stable', 'rls'],
    \ 'css': ['css-languageserver', '--stdio'],
    \ 'html': ['css-languageserver', '--stdio'],
    \ 'sh': ['bash-languageserver']
    \ }

let g:LanguageClient_settingsPath = '$HOME/.config/nvim/lsp-settings.json'

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> RR :call LanguageClient#textDocument_rename()<CR>
