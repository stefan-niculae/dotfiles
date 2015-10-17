" Note: Skip initialization for vim-tiny or vim-small.
" if 0 | endif

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" NeoBundle manages NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'tomtom/tcomment_vim'         " toggle comments
NeoBundle 'tpope/vim-surround'          " surrounding with parantheses, brackets, quotes, tags etc
" fuzzy code completion TODO things in the vim doc
NeoBundle 'Valloric/YouCompleteMe', {
     \ 'build'      : {
        \ 'mac'     : './install.py',
        \ 'unix'    : './install.py',
        \ 'windows' : 'install.py',
        \ 'cygwin'  : './install.py'
        \ }
     \ }
NeoBundle 'jiangmiao/auto-pairs'        " insert/delete brackets, parantheses, quotes in pairs
NeoBundle 'bling/vim-airline'           " status line at the bottom
NeoBundle 'luochen1990/rainbow'         " color different levels of parantheses in different colors
NeoBundle 'scrooloose/syntastic'        " syntax checking TODO learn how to use this

NeoBundle 'scrooloose/nerdtree'         " file tree TODO learn how to use this (after learning about tabs and tmux)
NeoBundle 'ctrlpvim/ctrlp.vim'          " fuzzy file finder
NeoBundle 'tpope/vim-fugitive'          " git integration TODO learn how to use this

" vim language syntax
NeoBundle 'syngan/vim-vimlint', {
    \ 'depends' : 'ynkdir/vim-vimlparser'
    \ }

NeoBundle 'evgenyzinoviev/vim-vendetta' " color scheme

call neobundle#end()

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
" NeoBundleClean

" Activate indenting (because of a bug this needs to be done after NeoBundle)
filetype plugin indent on

" Get rid of default mode indicator
set noshowmode

" Syntastic
" TODO only enable these if syntastic is installed (for the first time, when you before you install the plugin)
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Syntastic settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"let g:syntastic_enable_balloons = 1
let g:syntastic_auto_loc_list = 1 " open when errors are detected, closed when none


let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"

let g:syntastic_javascript_checkers = ['jshint']
"let g:syntastic_vim_checkers = ['vint']
let g:syntastic_vim_checkers = []


" Rainbow
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle"

" You Complete Me
" TODO Shift-<Tab> isin't passed to vim in terminal
" let g:ycm_key_invoke_completion = '<C-a>'
let g:ycm_min_num_of_chars_for_completion = 1 " experimental (default is 2)
let g:ycm_complete_in_comments = 1
let g:ycm_show_diagnostics_ui = 0 " let syntastic handle errors

" Auto Pairs
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutBackInsert = '<C-b>'

" Airline
" 'Straight' tabs
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
" let g:airline_theme = 'powerlineish'

