colorscheme koehler
set lines=999 columns=999
set wrap
autocmd VimLeavePre * mksession! ~/.vim/vim.sess
"set ssop+=resize,winpos,winsize,blank,buffers,curdir,folds,help,options,tabpages
set ssop+=resize,winpos,winsize,blank,curdir,folds,help,tabpages
set ssop-=options
set ssop-=buffers
set mousefocus
set guitablabel=[%N]\ %M\ %{ShortTabLabel()} " Show tab number, modification sign and filename as the tab label
