" Autoreload vimrc on save
augroup reload_vimrc
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END

" Update airline mode quicker
set timeoutlen=50 ttimeoutlen=10

" Reload vimrc on save
au BufWritePost .vimrc so ~/.vimrc

