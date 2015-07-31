" TODO
" add newline to end of file on save

" set tabs to have 4 spaces
set tabstop=4

" number of spaces a tab counts for when editing
set softtabstop=4

" expand tabs into spaces
set expandtab

" show tabs and trailing whitespace
set list
set listchars=tab:▸\ ,trail:·

" removes trailing whitespace
function! TrimWhiteSpace()
            %s/\s\+$//e
endfunction
nnoremap <silent> <Leader>rts :call TrimWhiteSpace()<CR>

" trims whitespace on save
autocmd FileWritePre    * :call TrimWhiteSpace()
autocmd FileAppendPre   * :call TrimWhiteSpace()
autocmd FilterWritePre  * :call TrimWhiteSpace()
autocmd BufWritePre     * :call TrimWhiteSpace()

set endofline
