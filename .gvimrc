colorscheme koehler
set lines=999 columns=999
set wrap
autocmd VimLeavePre * mksession! ~/.vim/vim.sess
"set ssop+=resize,winpos,winsize,blank,buffers,curdir,folds,help,options,tabpages
set ssop+=resize,winpos,winsize,blank,buffers,curdir,folds,help,tabpages
set ssop-=options
set mousefocus
