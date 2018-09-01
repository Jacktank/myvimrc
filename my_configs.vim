"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic (syntax checker)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 'cpp': ['clang++','cppcheck'],
let g:ale_linters = {
\   'c': ['all'],
\   'cpp': ['clang','clangcheck'],
\   'javascript': ['jshint'],
\   'python': ['flake8'],
\   'go': ['go', 'golint', 'errcheck']
\}

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\}
let g:ale_fix_on_save = 1

nmap <silent> <leader>a <Plug>(ale_next_wrap)

" Disabling highlighting
let g:ale_set_highlights = 0

" Only run linting when saving the file
" let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_enter = 0


" compeltion
let g:ale_compeltion_enable = 1
"set completeopt=menu,menuone,preview,noselect,noinsert
let g:AutoPairsMapCR = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git gutter (Git diff)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_enabled=0
nnoremap <silent> <leader>d :GitGutterToggle<cr>
let g:ale_sign_column_always = 1

" clang completion
" path to directory where library can be found
let g:clang_library_path='/usr/lib/llvm-3.9/lib'
" or path directly to the library file
let g:clang_library_path='/usr/lib/llvm-3.9/lib/libclang.so.1'
