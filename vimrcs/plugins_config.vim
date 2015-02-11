"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Important: 
"       This requries that you install https://github.com/amix/vimrc !
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=1
let g:bufExplorerShowRelativePath=0
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='mru'

""""""""""""""""""""""""""""""
" => YankRing
""""""""""""""""""""""""""""""
"if has("win16") || has("win32")
"    " Don't do anything
"else
"    let g:yankring_history_dir = '~/.vim_runtime/temp_dirs/'
"endif


""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 'ra'

let g:ctrlp_map = '<c-p>'
map <leader>cp :CtrlP<cr>
map <c-b> :CtrlPBuffer<cr>

let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'
 
let g:ctrlp_clear_cache_on_exit = 0

""""""""""""""""""""""""""""""
" => ctrlp-funky
""""""""""""""""""""""""""""""
let g:ctrlp_extensions = ['funky']
nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

""""""""""""""""""""""""""""""
" => ZenCoding
""""""""""""""""""""""""""""""
" Enable all functions in all modes
let g:user_zen_mode='a'


""""""""""""""""""""""""""""""
" => snipMate (beside <TAB> support <CTRL-j>)
""""""""""""""""""""""""""""""
"ino <c-j> <c-r>=snipMate#TriggerSnippet()<cr>
"snor <c-j> <esc>i<right><c-r>=snipMate#TriggerSnippet()<cr>


""""""""""""""""""""""""""""""
" => Vim grep
""""""""""""""""""""""""""""""
let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated'
set grepprg=/bin/grep\ -nH

""""""""""""""""""""""""""""""
" => Ctrlsf
""""""""""""""""""""""""""""""
let g:ctrlsf_ackprg = 'ack'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinSize = 20
map <leader>nt :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark 
map <leader>nf :NERDTreeFind<cr>
" open a NERDTree automatically when vim starts up if no files were specified
"autocmd vimenter * if !argc() | NERDTree | endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => taglist
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <F8> :TlistToggle<CR>
let g:Tlist_Show_One_File=1
let g:Tlist_Exit_OnlyWindow=1
let g:Tlist_Use_Right_Window=1

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
let g:airline_theme="luna"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vimroom
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:goyo_width=100
let g:goyo_margin_top = 2
let g:goyo_margin_bottom = 2
nnoremap <silent> <leader>z :Goyo<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic (syntax checker)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:syntastic_python_checkers=['pyflakes']

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-auto-save
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:auto_save=1  " enable AutoSave on Vim startup

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
" => GoldenView
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:goldenview__enable_default_mapping = 0
" 1. split to tiled windows
nmap <silent> <Leader>gv  <Plug>GoldenViewSplit

" 2. quickly switch current window with the main pane
" and toggle back
nmap <silent> <F9>   <Plug>GoldenViewSwitchMain
nmap <silent> <C-F9> <Plug>GoldenViewSwitchToggle

" 3. jump to next and previous window
nmap <silent> <Leader>w  <Plug>GoldenViewNext
nmap <silent> <Leader>W  <Plug>GoldenViewPrevious

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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => neocomplcache.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:neocomplcache_enable_at_startup = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => zeal.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('win32') || has('win64')
    let g:zv_zeal_directory = "D:\\Program Files (x86)\\zeal\\zeal.exe"
else
    let g:zv_zeal_directory = "/usr/bin/zeal"
endif
nmap <unique> <Leader>zd  <Plug>Zeavim
vmap <unique> <Leader>zd  <Plug>ZVVisSelection
