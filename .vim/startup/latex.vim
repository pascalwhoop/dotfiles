"------------------------------------------------------------
" LATEX SETUP 
"------------------------------------------------------------
let g:vimtex_enabled=1
let g:vimtex_complete_recursive_bib=1
let g:vimtex_fold_manual=1
"autocmd BufEnter *.tex set foldmethod=expr
"autocmd BufEnter *.tex set foldexpr=vimtex#fold#level(v:lnum)
"autocmd BufEnter *.tex set foldtext=vimtex#fold#text()
