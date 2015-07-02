" xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'  " change caps to esc on fedora

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set ruler		" show the cursor position all the time

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

set autoindent		" always set autoindenting on

" enable syntax highlighting
syntax enable

" show line numbers
set number

" set tabs to have 4 spaces
set tabstop=4

" number of spaces a tab counts for when editing
set softtabstop=4

" indent when moving to the next line while writing coe
set autoindent

" expand tabs into spaces
set expandtab

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
"let python_highlight_all = 1

set wildmenu            " visual autocomplete for command menu

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

set foldenable          " enable folding
" space open/closes folds
nnoremap <space> za
set foldmethod=indent   " fold based on indent level
