" TODO
" add newline to end of file on save

" set tabs to have 4 spaces
set tabstop=4

" number of spaces a tab counts for when editing
set softtabstop=4

" expand tabs into spaces
set expandtab

" show trailing whitespace
" TODO make these small dots
highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
