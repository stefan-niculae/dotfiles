" TODO
" C-s to save

" capslock acts as escape
silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'

" swap semicolon and colon
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

