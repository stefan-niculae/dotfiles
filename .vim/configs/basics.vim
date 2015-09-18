" TODO
" make paste place text in vim as is, no indentation/comments modifications
" make it able to paste text copied from vim into system things

" backspace in insert mode works like normal editor
set backspace=2
"?
"set backspace=indent, eol, start

" show the cursor position all the time
"set ruler

" show matching pair for () [] {}
set showmatch

" hybrid line numbers
set relativenumber
set number

" enable mouse on compatible terminal emulators
if has('mouse')
    set mouse=a
endif

" copy/pasting into system clipboard
" doesn't work...
set clipboard+=unnamedplus
set clipboard+=unnamed
" enter insert mode before pasting to avoid cutting up first few words
" doesn't work
nmap <C-V> i<C-V><esc>

" open a file at the last edited location
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") |
                    \ exe "normal! g`\"" | endif

" Experimental

" bigger :cmdline history
"set history=1000

