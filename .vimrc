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
map <F2> :w<CR>
imap <F2> <ESC>:w<CR>i
map <C-s> :w<CR>
imap <C-s> <ESC>:w<CR>i
" paste in insert mode
" imap <C-v> <Esc>pi
" duplicate line
imap <C-d> <Esc>yypi
" delete line
imap <C-l> <Esc>ddi
" close tab
if version >= 700
  map <C-t> <Esc>:tabnew<CR>
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

nmap <F8> :TagbarToggle<CR>
map <F3> :NERDTreeToggle<CR>
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
"set laststatus=1           " always show statusline 
" highlight StatusLine NONE ctermbg=DarkGreen ctermfg=White cterm=NONE 
" if has('statusline')
"  if version >= 700
"    " Fancy status line.
"    set statusline =
"    set statusline+=%#User1#                       " highlighting
"    set statusline+=%n                             " buffer number
"    set statusline+=%{'/'.bufnr('$')}\             " buffer count
"    set statusline+=%#User2#                       " highlighting
"    set statusline+=%f                             " file name
"    set statusline+=%#User1#                       " highlighting
"    set statusline+=%h%m%r%w\                      " flags
"    set statusline+=%{strlen(&ft)?&ft:'none'},     " file type
"    set statusline+=%{(&fenc==\"\"?&enc:&fenc)},   " encoding
"    set statusline+=%{((exists(\"+bomb\")\ &&\ &bomb)?\"B,\":\"\")} " BOM
"    set statusline+=%{&fileformat},                " file format
"    set statusline+=%{&spelllang},                 " spell language
"    set statusline+=%=                             " indent right
"    set statusline+=%#User2#                       " highlighting
"    set statusline+=%#User1#                       " highlighting
"    set statusline+=U+%04B\                        " Unicode char under cursor
"    set statusline+=%-6.(%l/%{line('$')},%c%V%)\ %<%P           " position
"  endif
"endif
"syntavti plugin config
let g:syntastic_phpcs_conf = '--standard=zend'


if filereadable($HOME . "/.vim/php.vim")
    source ~/.vim/php.vim
endif

if filereadable($HOME . "/.vim/my.vim")
    source ~/.vim/my.vim
endif
