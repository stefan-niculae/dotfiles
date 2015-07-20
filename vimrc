" TODO
" paste messes up indentation
" C-s to save
" add newline to end of file on save
" find cooler font



" use vim settings, rather than vi
" must be first
set nocompatible





""" Basic Settings

" backspace in insert mode works like normal editor
set backspace=2

" syntax highlighting
syntax on

" TODO find nicer colorscheme
colorscheme wasabi256

" show matching pair for () [] {}
set showmatch

" activate indenting
filetype indent on

" auto indenting
set autoindent

" line numbers
set number

" enable mouse on compatible terminal emulators
if has('mouse')
    set mouse=a
endif





""" Whitespace handling

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





""" Searching

" search as characters are entered
set incsearch

" highlight matches
set hlsearch




""" Key Remaps

" capslock acts as escape
silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'

" swap semicolon and colon
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;




""" Vimrc tweaks

" autoreload vimrc on save
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }





" TODO make it able to paste text copied from vim into system things
set clipboard=unnamed
