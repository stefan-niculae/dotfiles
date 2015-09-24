" TODO
" make paste place text in vim as is, no indentation/comments modifications
" make it able to paste text copied from vim into system things
" <Leader><something> or z= is too hard to enter (to little time between)

" backspace in insert mode works like in an usual
" in normal mode use x or X, not BS
set backspace=2

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

" Complete filenames with <Tab>,
" but not ones you would never edit with vim
set wildmenu
set wildmode=longest,list
set wildignore+=*.a,*.o
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png
set wildignore+=.DS_Store,.git,.hg,.svn
set wildignore+=*~,*.swp,*.tmp

" Minimum number of lines above or below cursor
set scrolloff=5

" Remove default startup message
set shortmess+=I

" No flashing screen as error feedback
set visualbell t_vb=

" C and D act from cursor to end of line, now Y does too
nnoremap Y y$

" Disable spell checking
set nospell
" Set language to british english (default is en)
set spelllang=en_gb

" Experimental

" bigger :cmdline history
"set history=1000

