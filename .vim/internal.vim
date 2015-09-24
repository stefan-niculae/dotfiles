" autoreload vimrc on save
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

" update airline mode quicker
set timeoutlen=50 ttimeoutlen=10

" reload vimrc on save
au BufWritePost .vimrc so ~/.vimrc
