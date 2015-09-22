" search as characters are entered
set incsearch

" highlight matches
set hlsearch

" case insensitive,
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
