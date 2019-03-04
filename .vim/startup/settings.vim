set term=xterm-256color
set nocompatible              " be iMproved, required
filetype off                  " required

set relativenumber
set wildignore+=*/vendor,*/node_modules/*,_site,*/__pycache__,*/venv/*,*/target/*,*/.vim$,\~$,*/.log,*/.aux,*/.cls,*/.aux,*/.bbl,*/.blg,*/.fls,*/.fdb*/,*/.toc,*/.out,*/.glo,*/.log,*/.ist,*/.fdb_latexmk
set encoding=utf-8
set textwidth=100
set tabstop=4 shiftwidth=4 expandtab
" Enable folding
set foldlevel=99
"------------------------------------------------------------
" WEB / HTML / CSS SETUP
"------------------------------------------------------------
autocmd BufRead,BufNewFile *.json,*.css,*.scss,*.less setlocal foldmethod=marker foldmarker={,}

"------------------------------------------------------------
" diary / notes
"------------------------------------------------------------
"autocmd BufEnter,BufRead,BufNewFile *.md Goyo
