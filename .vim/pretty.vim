" TODO
" nicer font (bookmarks/vim/fonts)
" nicer colorscheme
" make lowercase todo and fixme also be highlighted
" cursor to be a line when in insert (with instant toggling)
" remove 1px border on the left and right in windowed

" Syntax highlighting
syntax on

" 256 colors
set t_Co=256

" Color scheme
set background=dark
colorscheme buddy

" Airline
let g:airline_powerline_fonts = 1
set laststatus=2
set encoding=utf-8

" Current line highlight
set cursorline

" Put a line after 80 columns
" the color should be modified in order not to clash with the colorscheme
" let &colorcolumn=join(range(81,999),",") " this makes every column after 80
set colorcolumn=+1
highlight ColorColumn ctermbg=233 guibg=lightgrey

" Disable all blinking
set guicursor+=a:blinkon0

