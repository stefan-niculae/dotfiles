" TODO
" nicer font (bookmarks/vim/fonts)
" nicer colorscheme (solarized dark?)
" make lowercase todo and fixme also be highlighted
" cursor to be underscore or something more helpful
" search highlight to be different
" make theme compatible with semi-transparent terminal

" Syntax highlighting
syntax on

" 256 colors
set t_Co=256

" Color scheme
set background=dark
colorscheme onedark
"colorscheme solarized
"let g:solarized_termcolors=256

" This doesn't work...
" set guifont=FuraMono-Bold\ Powerline

" Airline
let g:airline_powerline_fonts = 1
set laststatus=2
set encoding=utf-8

" Current line highlight
set cursorline

" Different color bg after 80 chars
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=234 guibg=#2c2d27

" Disable all blinking
" doesn't work
set guicursor+=a:blinkon0
