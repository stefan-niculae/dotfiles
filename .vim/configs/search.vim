" Search as characters are entered
set incsearch

" Highlight matches
set hlsearch

" Case insensitive,
" except when search contains an uppercase or casing is specified
set ignorecase
set smartcase

" Search results appear in the middle of the screen
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

" Substitute all matches on the line
" add \g to replace only first one
set gdefault

" Clear last search highlight
nnoremap <silent> <Leader><Esc> :nohlsearch<CR>

" Disable search highlighting when in insert mode
autocmd InsertEnter * :setlocal nohlsearch
autocmd InsertLeave * :setlocal hlsearch

