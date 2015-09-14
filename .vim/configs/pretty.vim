" TODO
" nicer font (terminus?)
" nicer colorscheme (solarizewd dark?)
" make lowercase todo and fixme also be highlighted

" syntax highlighting
syntax on

" 256 colors
set t_Co=256

" color scheme
set background=dark
colorscheme onedark
"colorscheme solarized
"let g:solarized_termcolors=256

" this doesn't work...
" set guifont=FuraMono-Bold\ Powerline

" airline
let g:airline_powerline_fonts = 1
set laststatus=2
set encoding=utf-8

" current line highlight
set cursorline

" different color bg after 80 chars
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=234 guibg=#2c2d27

set gcr=a:blinkon0

