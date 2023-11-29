set hlsearch
set number
syntax on

set backspace=indent,eol,start
" note: leader key is \
xnoremap <leader>s <esc>:'<,'>:w !st<CR>
xnoremap <leader>x <esc>:'<,'>:w !pbcopy<CR>

call plug#begin()
Plug 'lervag/vimtex'
call plug#end()

let g:tex_flavor='latex' " Default tex file format
let g:vimtex_view_method = 'skim' " Choose which program to use to view PDF file 
let g:vimtex_view_skim_sync = 1 " Value 1 allows forward search after every successful compilation
let g:vimtex_view_skim_activate = 1 " Value 1 allows change focus to skim after command `:VimtexView` is given
" note may need \usepackage{pdfsync} to sync pdf, still not working

if empty(v:servername) && exists('*remote_startserver')
  call remote_startserver('VIM')
endif
set mouse=a
" turn off auto indent entirely, TODO: figure out a better way to selectively
" use auto indent.
set indentexpr=


" function! s:Get_visual_selection()
"   " Why is this not a built-in Vim script function?!
"   let [lnum1, col1] = getpos("'<")[1:2]
"   let [lnum2, col2] = getpos("'>")[1:2]
"   let lines = getline(lnum1, lnum2)
"   let lines[-1] = lines[-1][: col2 - (&selection == 'inclusive' ? 1 : 2)]
"   let lines[0] = lines[0][col1 - 1:]
"   return join(lines, "\n")
" endfunction
" 
" fun! Say(var1)
"   echo var1
"   "!st var1
" endfun
" 
" xnoremap <leader>v <esc>:'<,'>:echo Say(@*)<CR>
" " vnoremap <F6> :call Say(@*)<CR>
" 
set expandtab
