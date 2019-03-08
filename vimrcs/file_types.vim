"""""""""""""""""""""""""""""""
" common
"""""""""""""""""""""""""""""""
if has("nvim")
  au TermOpen * tnoremap <Esc> <c-\><c-n>
  au FileType fzf silent! tunmap <Esc>
endif

"""""""""""""""""""""""""""""""
"" => Python section
"""""""""""""""""""""""""""""""
"let python_highlight_all = 1
"au FileType python syn keyword pythonDecorator True None False self

"au BufNewFile,BufRead *.jinja set syntax=htmljinja
"au BufNewFile,BufRead *.mako set ft=mako

"au Filetype python setlocal tabstop=4
"wraw" au FileType python set listchars=tab:>-
"au BufEnter *.py set listchars=tab:>-
"au BufEnter *.py set list

"au FileType python map <buffer> F :set foldmethod=indent<cr>

"au FileType python inoremap <buffer> $r return
"au FileType python inoremap <buffer> $i import
"au FileType python inoremap <buffer> $p print
"au FileType python inoremap <buffer> $f #--- PH ----------------------------------------------<esc>FP2xi
"au FileType python map <buffer> <leader>1 /class
"au FileType python map <buffer> <leader>2 /def
"au FileType python map <buffer> <leader>C ?class
"au FileType python map <buffer> <leader>D ?def
