"------------------------------------------------------------
" PLUG
"------------------------------------------------------------
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin()
"Plug 'dbmrq/vim-ditto'
"Plug 'jceb/vim-orgmode'
"Plug 'powerman/vim-plugin-autosess'
"Plug 'xolox/vim-easytags'
"Plug 'ActivityWatch/aw-watcher-vim'
Plug 'Chiel92/vim-autoformat'
Plug 'Konfekt/FastFold' "a speed improvement for manual folds
Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plug 'SirVer/ultisnips'
Plug 'Valloric/YouCompleteMe'
Plug 'VundleVim/Vundle.vim'
"Plug 'abolish.vim'
Plug 'easymotion/vim-easymotion'
Plug 'ap/vim-css-color'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dag/vim-fish'
Plug 'davidhalter/jedi-vim'
Plug 'dbeniamine/todo.txt-vim'
Plug 'honza/vim-snippets'
Plug 'junegunn/goyo.vim',
Plug 'junegunn/vim-easy-align'
Plug 'lervag/vimtex'
Plug 'majutsushi/tagbar'
Plug 'plasticboy/vim-markdown',
"Plug 'python-mode/python-mode'
Plug 'reedes/vim-wordy'
Plug 'sheerun/vim-polyglot'
"Plug 'repeat.vim'
Plug 'scrooloose/nerdtree'
"Plug 'surround.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-speeddating'
Plug 'dense-analysis/ale'
Plug 'xolox/vim-misc'
Plug 'fatih/vim-go'
Plug 'chriskempson/base16-vim'


" All of your Plugins must be added before the following line
call plug#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"------------------------------------------------------------
"----------------------- VUNDLE END -------------------------
"------------------------------------------------------------
"------------------------------------------------------------
"
"------------------------------------------------------------
" YouCompleteMe PLUGIN SETUP
"------------------------------------------------------------
let g:ycm_filetype_blacklist = {}
let g:ycm_filetype_whitelist = {
        \ 'text': 1,
        \ 'markdown': 1,
        \ 'notes': 1
        \}
let g:ycm_filetype_specific_completion_to_disable = {
        \ 'gitcommit': 1
        \}
"------------------------------------------------------------
" ultisnips PLUGIN SETUP 
"------------------------------------------------------------
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-e>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"------------------------------------------------------------
" syntastic PLUGIN SETUP
"------------------------------------------------------------
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
" Syntastic Statusline configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"------------------------------------------------------------
" nerdtree PLUGIN SETUP
"------------------------------------------------------------
let NERDTreeWinSize=26
autocmd StdinReadPre * let s:std_in=1
"ignore some files
let NERDTreeRespectWildIgnore=1
" close nerdtree on close
autocmd VimLeave * NERDTreeClose
"auto open nerdtree
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>

"------------------------------------------------------------
" easyalign PLUGIN SETUP
"------------------------------------------------------------
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"------------------------------------------------------------
" FastFold PLUGIN SETUP
"------------------------------------------------------------
nmap zuz <Plug>(FastFoldUpdate)
let g:fastfold_savehook              = 1
let g:fastfold_fold_command_suffixes = ['x','X','a','A','o','O','c','C','r','R','m','M','i','n','N']
"let g:markdown_folding               = 1
let g:tex_fold_enabled               = 1
let g:vimsyn_folding                 = 'af'
let g:xml_syntax_folding             = 1
let g:javaScript_fold                = 1
let g:sh_fold_enabled                = 7

"------------------------------------------------------------
" ctrlp PLUGIN SETUP
"------------------------------------------------------------
"ctrlp show hidden files
let g:ctrlp_show_hidden=1
let g:ctrlp_working_path_mode = '0'
"------------------------------------------------------------
" ditto.vim PLUGIN SETUP
"------------------------------------------------------------
" Use autocmds to check your text automatically and keep the highlighting
" up to date (easier):
"au FileType markdown,text,tex DittoOn  " Turn on Ditto's autocmds
"nmap <leader>di <Plug>ToggleDitto      " Turn Ditto on and off

" If you don't want the autocmds, you can also use an operator to check
" specific parts of your text:
" vmap <leader>d <Plug>Ditto	       " Call Ditto on visual selection
" nmap <leader>d <Plug>Ditto	       " Call Ditto on operator movement

"nmap =d <Plug>DittoNext                " Jump to the next word
"nmap -d <Plug>DittoPrev                " Jump to the previous word
"nmap +d <Plug>DittoGood                " Ignore the word under the cursor
"nmap _d <Plug>DittoBad                 " Stop ignoring the word under the cursor
"nmap ]d <Plug>DittoMore                " Show the next matches
"nmap [d <Plug>DittoLess                " Show the previous matches

"------------------------------------------------------------
" Wordy PLUGIN SETUP
"------------------------------------------------------------
noremap <silent> <F8> :<C-u>NextWordy<cr>
let g:wordy#ring = [
  \ ['weak', 'weasel', 'opinion', 'adverbs', 'adjectives'],
  \ 'weak',
  \ ['being', 'passive-voice', ],
  \ 'business-jargon',
  \ 'weasel',
  \ 'puffery',
  \ ['problematic', 'redundant', ],
  \ ['colloquial', 'idiomatic', 'similies', ],
  \ 'art-jargon',
  \ ['contractions', 'opinion', 'vague-time', 'said-synonyms', ],
  \ 'adjectives',
  \ 'adverbs',
  \ ]

"------------------------------------------------------------
" Goyo PLUGIN SETUP
"------------------------------------------------------------
" Width
let g:goyo_width=120
autocmd BufRead, BufNewFile QuickNote.md Goyo
"------------------------------------------------------------
" todo.txt-vim PLUGIN SETUP
"------------------------------------------------------------
"au filetype todo setlocal omnifunc=todo#complete
let g:Todo_txt_prefix_creation_date=1

"------------------------------------------------------------
" vim-markdown PLUGIN SETUP
"------------------------------------------------------------
let g:vim_markdown_new_list_item_indent = 1
set conceallevel=0
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_new_list_item_indent = 4

"------------------------------------------------------------
" vim-markdown PLUGIN SETUP
"------------------------------------------------------------
:let g:notes_directories    = ['~/Documents/Syncthing/Default Folder/Notebooks']
:let g:notes_suffix         = '.md'
:let g:notes_conceal_code   = 0
:let g:notes_conceal_italic = 0
:let g:notes_conceal_bold   = 0
:let g:notes_conceal_url    = 0

