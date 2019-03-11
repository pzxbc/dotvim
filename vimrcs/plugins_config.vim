" NerdTree
" let g:NERDTreeWinSize = 20
map <leader>nt :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark
map <leader>ns :NERDTreeFind<cr>
map <leader>nf :NERDTreeFocus<cr>
" open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" " nerdtree过滤文件显示
" let NERDTreeIgnore=['\.con$', '\~$']
"
" vim-maximizer
nmap <leader>mt ::MaximizerToggle<cr>

" fzf
nnoremap <expr> <c-p> ':FZF '.projectroot#guess().'/<CR>'
nnoremap <leader>g :ProjectRootExe Ag<space>

" mark
nmap <silent> <Leader>ha <Esc>:Mark<cr>
nmap <silent> <Leader>hc <Esc>:MarkClear<cr>

" tabular
if exists(":Tabularize")
  nmap <Leader>a=  :Tabularize /=<CR>
  map <Leader>a=  :Tabularize /=<CR>
  map <Leader>a:  :Tabularize /:\zs<CR>
  map <Leader>a:  :Tabularize /:\zs<CR>
endif
" nmap <Leader>a=  :Tabularize /=<CR>
" map <Leader>a=  :Tabularize /=<CR>
" nmap <Leader>a:  :Tabularize /:<CR>
" map <Leader>a:  :Tabularize /:<CR>
" nmap <Leader>a|  :Tabularize /|<CR>
" map <Leader>a|  :Tabularize /|<CR>
"
" tagbar
map <Leader>tb :TagbarOpen fj<CR>

" neoterm
" Usage:
" :Tnew
" :vertical Tnew
" 参考:help terminal
tnoremap <expr> <C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'
inoremap <leader>rf <Esc>:TREPLSendFile<CR>
inoremap <leader>rl <Esc>:TREPLSendLine<CR>
vnoremap <leader>rs <Esc>:TREPLSendSelection<CR>
nnoremap <leader>rf :TREPLSendFile<CR>
nnoremap <leader>rl :TREPLSendLine<CR>
let g:neoterm_default_mod = 'belowight'

" rainbow_parentheses
nnoremap <silent> <leader>rp <Esc>:RainbowParenthesesToggle<cr>
\:RainbowParenthesesLoadRound<cr>
\:RainbowParenthesesLoadSquare<cr>
\:RainbowParenthesesLoadBraces<cr>
\:RainbowParenthesesLoadChevrons<cr>
