call pathogen#infect()
" Tab key produces 4 spaces, and tab characters are converted to spaces
set tabstop=4
set shiftwidth=4
" set expandtab
set background=dark
" when you start searching text with /, search is performed at every new character insertion
set incsearch
set hlsearch
set ignorecase
set nopaste
set autoindent
" set fileformats=unix,dos
" docblock comments are continued when a newline is inserted
set comments=sr:/*,mb:*,ex:*/
syntax on
filetype plugin on
filetype plugin indent on
" check syntax with Ctrl + L
autocmd FileType php noremap &lt;C-L&gt; :!/usr/bin/env php -l %&lt;CR&gt;
autocmd FileType phtml noremap &lt;C-L&gt; :!/usr/bin/env php -l %&lt;CR&gt;

" disable REPLACE mode
imap >Ins> <Esc>i
" undo
nmap <C-z> u
imap <C-z> <Esc>ui
" redo
imap <C-y> <Esc><C-R>i
" save
"map <F2> :w<CR>
"imap <F2> <ESC>:w<CR>i
map <C-s> :w<CR>
imap <C-s> <ESC>:w<CR>
" paste in insert mode
" imap <C-v> <Esc>pi
" duplicate line
"imap <C-d> <Esc>yypi
imap <C-d> <Esc>mzyyp`zjli
" delete line
imap <C-l> <Esc>ddi
" close tab
if version >= 700
"  map <C-t> <Esc>:tabnew<CR>
  map <F10> <Esc>:tabclose<CR>
  imap <F10> <Esc>:tabclose<CR>
  map <F11> <Esc>:set syntax=off<CR>
  imap <F11> <Esc>:set syntax=off<CR>
  map <F12> <Esc>:set syntax=on<CR>
  imap <F12> <Esc>:set syntax=on<CR>
endif

" Use tabs for buffers
nnoremap <C-S-tab> :bprevious<CR>
nnoremap <C-tab>   :bnext<CR>
" Esc in inset mode
:imap jj <Esc>

nmap <F8> :TagbarToggle<CR>
"nmap <F9> :SyntasticToggleMode<CR>
map <F3> :NERDTreeToggle<CR>
" set pcs to be mapped
nnoremap \ph :call phpcs#phpcsCheck()<CR>
" insert tags from ctags
set tags=/projects/tags/j138
set encoding=utf-8
" disable swap and backup
set noswapfile
set nobackup
set wrap
set number "show line numbers on the left
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
"over 80 line column show a different background
set cc=80
" status line changes
set showmode  showcmd  cmdheight=2 
let g:syntastic_phpcs_conf = '--standard=Zend'
let g:syntastic_auto_loc_list=1
let g:syntastic_loc_list_height=5
let g:syntastic_quiet_warnings=0

if filereadable($HOME . "/.vim/php.vim")
    source ~/.vim/php.vim
endif

if filereadable($HOME . "/.vim/my.vim")
    source ~/.vim/my.vim
endif
