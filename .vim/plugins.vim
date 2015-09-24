" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" NeoBundle manages NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'bling/vim-airline'           " status line at the bottom
" TODO surround doesn't work...
NeoBundle 'tpope/vim-surround'          " surrounding with parantheses, brackets, quotes, tags etc
NeoBundle 'scrooloose/nerdtree'         " file tree
NeoBundle 'scrooloose/syntastic'        " syntax checking TODO learn how to use this
" TODO none of the commenting plugins work...
"NeoBundle 'scrooloose/nerdcommenter'   " toggle comments on region
"NeoBundle 'tpope/vim-commentary'
"NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'ctrlpvim/ctrlp.vim'          " fuzzy file finder
NeoBundle 'tpope/vim-fugitive'          " git integration TODO learn how to use this
NeoBundle 'jiangmiao/auto-pairs'        " insert/delete brackets, parantheses, quotes in pairs
NeoBundle 'luochen1990/rainbow'         " color different levels of parantheses in different colors
NeoBundle 'Valloric/YouCompleteMe'      " fuzzy code completion

call neobundle#end()

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" Activate indenting (because of a bug this needs to be done after NeoBundle)
filetype plugin indent on

" Get rid of default mode indicator
set noshowmode

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Rainbow
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle"

