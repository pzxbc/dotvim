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
" :Ag  - Start fzf with hidden preview window that can be enabled with "?" key
" :Ag! - Start fzf in fullscreen and display the preview window above
command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 fzf#vim#with_preview(),
  \                 <bang>0)
  " \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  " \                         : fzf#vim#with_preview('right:50%:hidden', '?'),

" Similarly, we can apply it to fzf#vim#grep. To use ripgrep instead of ag:
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

" Likewise, Files command with preview window
command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

nnoremap <expr> <c-p> ':Files! '.projectroot#guess().'/<CR>'
nnoremap <leader>g :ProjectRootExe Ag!<space>


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
nnoremap <leader>t :vertical Tnew<CR>
if has('nvim')
    tnoremap <expr> <C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'
endif
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
