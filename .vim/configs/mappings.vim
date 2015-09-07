" TODO
" C-s to save
" C-e for nerdtree
" C-/ for toggling comments
" swap grave/tilde
" backspace to behave as usual in normal mode

" capslock acts as escape
silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'

" swap semicolon and colon
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

" leader is space
"let mapleader = "\<Space>"
"let mapleader = " "
let mapleader=","

" workdir tree
nnoremap <C-e> :NERDTreeToggle<CR>

" toggle comments
"nnoremap <C-b> <leader>c<leader>

" disable auto indentation on paste
command Paste execute 'set paste | insert | set nopaste'

" delete key behaves like in insert mode
function! Delete_key(...)
  let line=getline (".")
  if line=~'^\s*$'
    execute "normal dd"
    return
  endif
  let column = col (".")
  let line_len = strlen (line)
  let first_or_end=0
  if column == 1
    let first_or_end=1
  else
    if column == line_len
      let first_or_end=1
    endif
  endif
  execute "normal i\<DEL>\<Esc>"
  if first_or_end == 0
    execute "normal l"
  endif
endfunction
nnoremap <silent> <DEL> :call Delete_key()<CR>

" return key behaves like in normal mode
nnoremap <silent> <CR> i<CR><Esc>

" Better comand-line editing
cnoremap <C-j> <t_kd>
cnoremap <C-k> <t_ku>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" G actually takes you to the end of the file
map G G$

" don't deselect after indent/unindent
vnoremap > >gv
vnoremap < <gv

" tab and shift-tab indent and unindent
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv
