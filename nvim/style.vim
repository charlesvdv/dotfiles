set number
set cursorline

set background=dark
colorscheme gruvbox

" lightline.vim
let g:ale_sign_warning = '▲'
let g:ale_sign_error = '✗'
highlight link ALEWarningSign String
highlight link ALEErrorSign Title

let g:lightline = {
\     'colorscheme': 'wombat',
\     'active': {
\         'left': [['mode', 'paste'], ['gitbranch', 'readonly', 'filename', 'modified']],
\         'right': [['lineinfo'], ['percent'],
\             ['fileformat', 'fileencoding', 'filetype'],
\             ['linter_warnings', 'linter_errors', 'linter_ok']
\         ],
\     },
\     'component_function': {
\         'gitbranch': 'fugitive#head',
\         'filename': 'LightlineRelativeFilename'
\     },
\     'component_expand': {
\         'linter_warnings': 'LightlineLinterWarnings',
\         'linter_errors': 'LightlineLinterErrors',
\         'linter_ok': 'LightlineLinterOK'
\     },
\     'component_type': {
\         'readonly': 'error',
\         'linter_warnings': 'warning',
\         'linter_errors': 'error'
\     },
\ }

function! LightlineRelativeFilename()
  return expand('%')
endfunction

function! LightlineLinterWarnings() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '' : printf('%d ◆', l:all_non_errors)
endfunction

function! LightlineLinterErrors() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '' : printf('%d ✗', l:all_errors)
endfunction

function! LightlineLinterOK() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '✓ ' : ''
endfunction

autocmd User ALELint call s:MaybeUpdateLightline()

" Update and show lightline but only if it's visible (e.g., not in Goyo)
function! s:MaybeUpdateLightline()
  if exists('#lightline')
    call lightline#update()
  end
endfunction
