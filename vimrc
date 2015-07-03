" TODO
" :noh automatically after finished searching
" copy from vim into system clipboard
" make <enter> insert newline in command mode
" <backspace> to delete in command mode
" delete newlines in command mode
" vimaweseome.com plugins


" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible


" vim interferes with vundle
filetype off

" vundle setup
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" " 'user/repository' format
Plugin 'gmarik/vundle'

" We could also add repositories with a ".git" extension
Plugin 'scrooloose/nerdtree.git'

" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site
Plugin 'Buffergator'

Plugin 'Syntastic'

" Now we can turn our filetype functionality back on
filetype plugin indent on




" make capslock act as esc (to go back into command mode)
silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" show the cursor position all the time
set ruler		

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif


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
