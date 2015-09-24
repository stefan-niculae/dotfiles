" TODO
" add newline to end of file on save
" disable trailing whitespace display on current line in insert mode
" when saving and trimming whitespace, return cursor to position before saving

" Number of spaces a tab counts for when editing
set softtabstop=4

" Set tabs to have 4 spaces
set tabstop=4
set shiftwidth=4
set shiftround

" Expand tabs into spaces
set expandtab

" Show tabs and trailing whitespace
set list
set listchars=tab:▸\ ,trail:·

" Removes trailing whitespace
function! TrimWhiteSpace()
            %s/\s\+$//e
endfunction
nnoremap <silent> <Leader>rts :call TrimWhiteSpace()<CR>

" Trims whitespace on save
autocmd FileWritePre    * :call TrimWhiteSpace()
autocmd FileAppendPre   * :call TrimWhiteSpace()
autocmd FilterWritePre  * :call TrimWhiteSpace()
autocmd BufWritePre     * :call TrimWhiteSpace()

" Force newline at end of file
" doesn't work
set endofline

