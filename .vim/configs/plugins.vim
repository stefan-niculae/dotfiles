" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" NeoBundle manages NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:

" status line at the bottom
NeoBundle 'bling/vim-airline'

" TODO surround doesn't work...
" surrounding with parantheses, brackets, quotes, tags etc
"NeoBundle 'tpope/vim-surround'

" file tree
NeoBundle 'scrooloose/nerdtree'

" syntax checking i guess TODO learn how to use this
NeoBundle 'scrooloose/syntastic'

" TODO none of the commenting plugins work...
" toggle comments on region
"NeoBundle 'scrooloose/nerdcommenter'
"NeoBundle 'tpope/vim-commentary'
"NeoBundle 'tomtom/tcomment_vim'

" fuzzy file finder
NeoBundle 'ctrlpvim/ctrlp.vim'

" git integration TODO learn how to use this
NeoBundle 'tpope/vim-fugitive'

" insert/delete brackets, parantheses, quotes in pairs
NeoBundle 'jiangmiao/auto-pairs'

" color different levels of parantheses in different colors
NeoBundle 'luochen1990/rainbow'

" fuzzy code completion
NeoBundle 'Valloric/YouCompleteMe'

call neobundle#end()

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" activate indenting (because of a bug this needs to be done after NeoBundle)
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

