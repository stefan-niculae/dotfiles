" Autoreload vimrc on save
" TODO make it work with the config files in .vim/* aswell
" augroup reload_vimrc
"     autocmd!
"     autocmd BufWritePost $MYVIMRC source $MYVIMRC
" augroup END

" Update airline mode quicker
set timeoutlen=100
set ttimeoutlen=10

" Make movements operate on 1 screen line in wrap mode (toggleable by Space-w)
noremap <silent> <Leader>w :call ToggleWrap()<CR>
function ToggleWrap()
  if &wrap
    echo "Wrap OFF"
    setlocal nowrap
    set virtualedit=all
    silent! nunmap <buffer> <Up>
    silent! nunmap <buffer> <Down>
    silent! nunmap <buffer> <Home>
    silent! nunmap <buffer> <End>
    silent! iunmap <buffer> <Up>
    silent! iunmap <buffer> <Down>
    silent! iunmap <buffer> <Home>
    silent! iunmap <buffer> <End>
    silent! nunmap  <buffer> k
    silent! nunmap  <buffer> j
    silent! nunmap  <buffer> 0
    silent! nunmap  <buffer> $
  else
    echo "Wrap ON"
    setlocal wrap linebreak nolist
    set virtualedit=
    setlocal display+=lastline
    noremap  <buffer> <silent> <Up>   gk
    noremap  <buffer> <silent> <Down> gj
    noremap  <buffer> <silent> <Home> g<Home>
    noremap  <buffer> <silent> <End>  g<End>
    inoremap <buffer> <silent> <Up>   <C-o>gk
    inoremap <buffer> <silent> <Down> <C-o>gj
    inoremap <buffer> <silent> <Home> <C-o>g<Home>
    inoremap <buffer> <silent> <End>  <C-o>g<End>
    noremap  <buffer> <silent> k gk
    noremap  <buffer> <silent> j gj
    noremap  <buffer> <silent> 0 g0
    noremap  <buffer> <silent> $ g$
  endif
endfunction

set nowrap " TODO find out if there is a set wrap somewhere
" Wrap is on by default
silent! call ToggleWrap()
