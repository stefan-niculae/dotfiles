" TODO
" paste messes up indentation
" make it able to paste text copied from vim into system things

" backspace in insert mode works like normal editor
set backspace=2

" show matching pair for () [] {}
set showmatch

" activate indenting
filetype indent on

" auto indenting
" TODO: fix autoindent
"set autoindent

" line numbers
set number

" enable mouse on compatible terminal emulators
if has('mouse')
    set mouse=a
endif

" doesn't work...
set clipboard=unnamedplus

" leader is space
let mapleader=" "

