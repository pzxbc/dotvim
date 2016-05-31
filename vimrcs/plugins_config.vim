"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Important:
"       This requries that you install https://github.com/amix/vimrc !
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""
" => molokai
""""""""""""""""""""""""""""""
let g:molokai_original = 1

""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 'ra'

let g:ctrlp_map = '<c-p>'
map <leader>cp :CtrlP<cr>
map <c-b> :CtrlPBuffer<cr>

let g:ctrlp_max_height = 40
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }

let g:ctrlp_clear_cache_on_exit = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinSize = 20
map <leader>nt :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark
map <leader>nf :NERDTreeFind<cr>
" open a NERDTree automatically when vim starts up if no files were specified
"autocmd vimenter * if !argc() | NERDTree | endif

""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=1
let g:bufExplorerShowRelativePath=0
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='mru'

""""""""""""""""""""""""""""""
" => neocomplete
""""""""""""""""""""""""""""""
" Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

""""""""""""""""""""""""""""""
" => YankRing
""""""""""""""""""""""""""""""
"if has("win16") || has("win32")
"    " Don't do anything
"else
"    let g:yankring_history_dir = '~/.vim_runtime/temp_dirs/'
"endif


""""""""""""""""""""""""""""""
" => ctrlp-extensions
""""""""""""""""""""""""""""""
nmap <Leader>py :CtrlPYankring<Cr>

""""""""""""""""""""""""""""""
" => Vim grep
""""""""""""""""""""""""""""""
let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated'
set grepprg=/bin/grep\ -nH

""""""""""""""""""""""""""""""
" => Ctrlsf
""""""""""""""""""""""""""""""
let g:ctrlsf_ackprg = 'ack'

""""""""""""""""""""""""""""""
" => vim-maximizer
""""""""""""""""""""""""""""""
nmap <leader>mt ::MaximizerToggle<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => easymotion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Bi-directional find motion
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-s)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-s2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" map  / <Plug>(easymotion-sn)
" omap / <Plug>(easymotion-tn)
" " These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" " Without these mappings, `n` & `N` works fine. (These mappings just provide
" " different highlight method and have some other features )
" map  n <Plug>(easymotion-next)
" map  N <Plug>(easymotion-prev)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F8> :TagbarToggle<CR>
map <Leader>tb :TagbarOpen fj<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-multiple-cursors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_next_key="\<C-s>"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => surround.vim config
" Annotate strings with gettext http://amix.dk/blog/post/19678
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vmap Si S(i_<esc>f)
au FileType mako vmap Si S"i${ _(<esc>2f"a) }<esc>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-airline config (force color)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:airline_theme="solarized"
if !has("gui_running")
    let g:airline_theme="luna"
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic (syntax checker)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:syntastic_python_checkers=['pyflakes']

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-auto-save
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:auto_save=1  " enable AutoSave on Vim startup
" let g:auto_save_in_insert_mode = 0  " do not save while in insert mode in vim7.3 completeDone required vim7.4

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-session
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:session_autoload='yes'
let g:session_autosave='yes'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Mark
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <silent> <Leader>ha <Esc>:Mark<cr>
nmap <silent> <Leader>hc <Esc>:MarkClear<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => rainbow_parentheses
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <leader>rp <Esc>:RainbowParenthesesToggle<cr>
\:RainbowParenthesesLoadRound<cr>
\:RainbowParenthesesLoadSquare<cr>
\:RainbowParenthesesLoadBraces<cr>
\:RainbowParenthesesLoadChevrons<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Transparency windows
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 如果不想要透明就取消下面的注释
let g:loaded_transparency_windows_vim=1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => tabular
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" if exists(":Tabularize")
"   nmap <Leader>a=  :Tabularize /=<CR>
"   map <Leader>a=  :Tabularize /=<CR>
"   map <Leader>a:  :Tabularize /:\zs<CR>
"   map <Leader>a:  :Tabularize /:\zs<CR>
" endif
nmap <Leader>a=  :Tabularize /=<CR>
map <Leader>a=  :Tabularize /=<CR>
nmap <Leader>a:  :Tabularize /:<CR>
map <Leader>a:  :Tabularize /:<CR>
" nmap <Leader>a|  :Tabularize /|<CR>
" map <Leader>a|  :Tabularize /|<CR>

