"------------------------------------------------------------
" VUNDLE
"------------------------------------------------------------
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
" add vim plugins here
"

"Plugin 'python-mode/python-mode'

Plugin 'ap/vim-css-color'
Plugin 'majutsushi/tagbar'
Plugin 'Chiel92/vim-autoformat'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'plasticboy/vim-markdown',
Plugin 'junegunn/goyo.vim',
Plugin 'jceb/vim-orgmode'
Plugin 'SirVer/ultisnips'
Plugin 'Valloric/YouCompleteMe'
Plugin 'VundleVim/Vundle.vim'
Plugin 'abolish.vim'
Plugin 'ctrlp.vim'
"Plugin 'dbmrq/vim-ditto'
Plugin 'davidhalter/jedi-vim'
Plugin 'honza/vim-snippets'
Plugin 'junegunn/vim-easy-align'
Plugin 'lervag/vimtex'
Plugin 'Konfekt/FastFold'
"Plugin 'powerman/vim-plugin-autosess'
Plugin 'reedes/vim-wordy'
Plugin 'repeat.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'surround.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-speeddating'
Plugin 'vim-syntastic/syntastic'
Plugin 'xolox/vim-easytags'
Plugin 'xolox/vim-misc'

" All of your Plugins must be added before the following line
call vundle#end()            " required
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
"let g:ycm_filetype_blacklist = {}
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
" FastFold LUGIN SETUP
"------------------------------------------------------------
nmap zuz <Plug>(FastFoldUpdate)
let g:fastfold_savehook              = 1
let g:fastfold_fold_command_suffixes = ['x','X','a','A','o','O','c','C','r','R','m','M','i','n','N']
let g:markdown_folding               = 1
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
let g:goyo_width = 120
"autocmd BufRead, BufNewFile *.md,*.markdown Goyo
"autocmd BufLeave, BufNewFile *.md,*.markdown Goyo!
