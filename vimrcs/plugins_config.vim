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
" => editorconfig
""""""""""""""""""""""""""""""
" work with fugitive
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

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

""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=1
let g:bufExplorerShowRelativePath=0
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='mru'

""""""""""""""""""""""""""""""
" => fzf
""""""""""""""""""""""""""""""
nnoremap <expr> <c-p> ':FZF '.projectroot#guess().'/<CR>'
nnoremap <leader>g :ProjectRootExe Ag<space>


""""""""""""""""""""""""""""""
" => neocomplete
""""""""""""""""""""""""""""""
" " Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" " Disable AutoComplPop.
" let g:acp_enableAtStartup = 0
" " Use neocomplete.
" let g:neocomplete#enable_at_startup = 1
" " Use smartcase.
" let g:neocomplete#enable_smart_case = 1
" " Set minimum syntax keyword length.
" let g:neocomplete#sources#syntax#min_keyword_length = 3

" set completeopt-=preview

" " Recommended key-mappings.
" " <CR>: close popup and save indent.
" inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
" function! s:my_cr_function()
"   return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
"   " For no inserting <CR> key.
"   "return pumvisible() ? "\<C-y>" : "\<CR>"
" endfunction
" " <TAB>: completion.
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" " <C-h>, <BS>: close popup and delete backword char.
" inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
" inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"

" " Enable omni completion.
" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" " autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

""""""""""""""""""""""""""""""
" => YankRing
""""""""""""""""""""""""""""""
"if has("win16") || has("win32")
"    " Don't do anything
"else
"    let g:yankring_history_dir = '~/.vim_runtime/temp_dirs/'
"endif


"""""""""""""""""""""""""""""""
"" => ctrlp-extensions
"""""""""""""""""""""""""""""""
"nmap <Leader>py :CtrlPYankring<Cr>

"""""""""""""""""""""""""""""""
"" => Vim grep
"""""""""""""""""""""""""""""""
"let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated'
"set grepprg=/bin/grep\ -nH

"""""""""""""""""""""""""""""""
"" => Ctrlsf
"""""""""""""""""""""""""""""""
"let g:ctrlsf_ackprg = 'ack'

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
" => ale (Asynchronous Lint Engine)
" https://github.com/w0rp/ale
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" :help ale-options for global options
" : help ale-linter-options for options specified to particular linters
" 指定使用的检查器
" let g:ale_linters = {
" \   'python': ['flake8'],
" \}
" let g:ale_echo_msg_error_str = 'E'
" let g:ale_echo_msg_warning_str = 'W'
" let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" " 忽略缩进警告
" let g:ale_python_flake8_options = '--ignore=W191,E501,E265,F401'

" " 格式化
" let g:ale_fixers = {
" \   'javascript': ['prettier'],
" \   'json': ['prettier'],
" \   'css': ['prettier'],
" \}
" let g:ale_fix_on_save = 1
" let g:ale_completion_enabled = 1

" let g:ale_javascript_prettier_use_local_config = 1
" let g:ale_javascript_prettier_options = '--single-quote --trailing-comma es5'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => LanguageClient-neovim.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hidden
" let g:LanguageClient_serverCommands = {
" \ 'cpp': ['/usr/local/bin/cquery',
" \ '--log-file=/home/pzx/.cache/cquery/cq.log',
" \ '--init={"cacheDirectory":"/home/pzx/.cache/cquery"}']
" \ }

let g:LanguageClient_serverCommands = {
\ 'python': ['/usr/local/bin/pyls'],
\ }

nnoremap <F12> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => asyncomplete.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"
" " imap <c-space> <Plug>(asyncomplete_force_refresh)
" let g:asyncomplete_remove_duplicates = 1
" " let g:asyncomplete_smart_completion = 1
" let g:asyncomplete_auto_popup = 1
" " set completeopt+=preview
" " autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" let g:lsp_log_file='/home/pzx/.vim_runtime/temp_dirs/lsp.log'
" if executable('cquery')
"    au User lsp_setup call lsp#register_server({
"       \ 'name': 'cquery',
"       \ 'cmd': {server_info->['cquery']},
"       \ 'root_uri': {server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'compile_commands.json'))},
"       \ 'initialization_options': { 'cacheDirectory': '/home/pzx/.cache/cquery' },
"       \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp', 'cc'],
"       \ })
" endif
" call asyncomplete#register_source(asyncomplete#sources#buffer#get_source_options({
"     \ 'name': 'buffer',
"     \ 'whitelist': ['*'],
"     \ 'blacklist': ['go'],
"     \ 'completor': function('asyncomplete#sources#buffer#completor'),
"     \ }))
" call asyncomplete#register_source(asyncomplete#sources#file#get_source_options({
"     \ 'name': 'file',
"     \ 'whitelist': ['*'],
"     \ 'priority': 10,
"     \ 'completor': function('asyncomplete#sources#file#completor')
"     \ }))
" let g:tmuxcomplete#asyncomplete_source_options = {
"             \ 'name':      'tmuxcomplete',
"             \ 'whitelist': ['*'],
"             \ 'config': {
"             \     'splitmode':      'words',
"             \     'filter_prefix':   1,
"             \     'show_incomplete': 1,
"             \     'sort_candidates': 0,
"             \     'scrollback':      0,
"             \     'truncate':        0
"             \     }
"             \ }


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-auto-save
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:auto_save=1  " enable AutoSave on Vim startup
let g:auto_save_silent = 1
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

