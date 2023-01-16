autocmd BufEnter *.py set foldmethod=indent
"------------------------------------------------------------
"PYTHON COMPATIBILITY
"------------------------------------------------------------
"pymode mappings
let g:pymode_rope_rename_bind = '<C-c>rr'
let g:pymode_rope_organize_imports_bind = '<C-c>ro'
let g:pymode_rope_extract_method_bind = '<C-c>rm'
let g:pymode_rope_extract_variable_bind = '<C-c>rl'
"au BufNewFile,BufRead *.py
"set tabstop=4
"set softtabstop=4
"set shiftwidth=4
"set textwidth=120
"set expandtab
"set autoindent
"set fileformat=unix

" disable pymode linting because we use syntastic
"let g:pymode_lint_on_write = 0
"let g:pymode = 1
"let g:pymode_options_max_line_length = 120 
"let g:pymode_rope_completion = 1
"let g:pymode_rope_complete_on_dot = 1
"let g:pymode_rope_completion_bind = '<C-Space>'
"let g:pymode_rope_autoimport = 1
"let g:pymode_rope_autoimport_import_after_complete = 1
"let g:pymode_syntax = 1
"let g:pymode_syntax_all = 1 "highlight python like crazy

