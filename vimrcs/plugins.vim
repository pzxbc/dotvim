""""""""""""""""""""""""""""""
" => 插件管理 vim-plug
""""""""""""""""""""""""""""""
" 具体插件管理的使用参考vim-plug
" https://github.com/junegunn/vim-plug

call plug#begin('~/.vim_runtime/bundle')

" 键位映射查看
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }

" 选出常用的 其他都暂时屏蔽
" 主题
Plug 'lifepillar/vim-solarized8'
Plug 'drewtempelmeyer/palenight.vim'
" 布局
" Plug 'bling/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/lightline.vim'
let g:lightline = {
      \ 'colorscheme': 'palenight',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'cocstatus', 'readonly', 'filename', 'modified' ], ['ctrlpmark'] ],
      \   'right': [ [ 'lineinfo' ], ['percent'], [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status',
      \   'filename': 'LightlineFilename',
      \   'fileformat': 'LightlineFileformat',
      \   'filetype': 'LightlineFiletype',
      \   'fileencoding': 'LightlineFileencoding',
      \   'mode': 'LightlineMode',
      \   'ctrlpmark': 'CtrlPMark',
      \ },
      \ 'subseparator': { 'left': '|', 'right': '|' }
      \ }

function! LightlineModified()
  return &ft =~ 'help' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! LightlineReadonly()
  return &ft !~? 'help' && &readonly ? 'RO' : ''
endfunction

function! LightlineFilename()
  let fname = expand('%:t')
  return fname == 'ControlP' && has_key(g:lightline, 'ctrlp_item') ? g:lightline.ctrlp_item :
        \ fname == '__Tagbar__' ? g:lightline.fname :
        \ fname =~ '__Gundo\|NERD_tree' ? '' :
        \ ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
        \ ('' != fname ? fname : '[No Name]') .
        \ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
endfunction

function! LightlineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightlineFiletype()
  return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction

function! LightlineFileencoding()
  return winwidth(0) > 70 ? (&fenc !=# '' ? &fenc : &enc) : ''
endfunction

function! LightlineMode()
  let fname = expand('%:t')
  return fname == '__Tagbar__' ? 'Tagbar' :
        \ fname == 'ControlP' ? 'CtrlP' :
        \ fname == '__Gundo__' ? 'Gundo' :
        \ fname == '__Gundo_Preview__' ? 'Gundo Preview' :
        \ fname =~ 'NERD_tree' ? 'NERDTree' :
        \ winwidth(0) > 60 ? lightline#mode() : ''
endfunction

autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()

" 图标
Plug 'ryanoasis/vim-devicons'
" vim操作
Plug 'lifepillar/vim-cheat40'

" " 文件查找
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }

" 目录查看
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" 窗口最大化
Plug 'szw/vim-maximizer'

" 自动保存
Plug '907th/vim-auto-save'
let g:auto_save=1  " enable AutoSave on Vim startup
let g:auto_save_silent = 1
" let g:auto_save_in_insert_mode = 0  " do not save while in insert mode in vim7.3 completeDone required vim7.4

" 高亮标记
Plug '~/.vim_runtime/bundle/mark'

" 语法高亮和缩进
" Plug 'sheerun/vim-polyglot'

" 通用开发工具
" Linux Commands
Plug 'tpope/vim-eunuch'
Plug 'dbakker/vim-projectroot'
" 分项目配置
" 加载项目目录下的.lvimrc文件
Plug 'embear/vim-localvimrc'
Plug 'tpope/vim-commentary'

Plug 'editorconfig/editorconfig-vim'
" work with fugitive
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" 字符对齐
Plug 'godlygeek/tabular'

" 使用vim8新插件ale，支持异步语法检测
" C++
" cppcheck http://cppcheck.sourceforge.net/
" sudo apt-get install cppcheck
" 自动补全使用cquery
" https://github.com/cquery-project/cquery
Plug 'w0rp/ale'
" c++ lint只使用这两个lint就好了，他们可以使用compile_commands.json文件
" CMake生成compile_commands.json文件
" mkdir build
" cd build
" cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=ON ..
" ln -s build/compile_commands.json compile_commands.json
let g:ale_linters = {
\   'cpp': ['clangcheck', 'clangtidy'],
\   'python': ['flake8'],
\}

" coc completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" 暂时屏蔽补全插件
" 测试一下新的插件 coc.vim
" Plug 'ervandew/supertab'
" let g:SuperTabDefaultCompletionType = "<c-n>"

" Plug 'autozimu/LanguageClient-neovim', {
"     \ 'branch': 'next',
"     \ 'do': 'bash install.sh',
"     \ }
" set hidden
" " let g:LanguageClient_serverCommands = {
" " \ 'cpp': ['/usr/local/bin/cquery',
" " \ '--log-file=/home/pzx/.cache/cquery/cq.log',
" " \ '--init={"cacheDirectory":"/home/pzx/.cache/cquery"}']
" " \ }

" let g:LanguageClient_serverCommands = {
" \ 'python': ['/usr/local/bin/pyls'],
" \ }

" nnoremap <F12> :call LanguageClient_contextMenu()<CR>
" " Or map each action separately
" nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
" nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
" nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
" https://github.com/zchee/deoplete-jedi/wiki/Setting-up-Python-for-Neovim
"
" if has('nvim')
"   Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" else
"   Plug 'Shougo/deoplete.nvim'
"   Plug 'roxma/nvim-yarp'
"   Plug 'roxma/vim-hug-neovim-rpc'
" endif
" let g:deoplete#enable_at_startup = 1
" " Tmux 补齐
" Plug 'wellle/tmux-complete.vim'
" " Python 编程
" Plug 'zchee/deoplete-jedi'
" " python 补全使用https://github.com/palantir/python-language-server
"
" ---------------------------------------------------------------------
" " 代码片段
" Plug 'Shougo/neosnippet.vim'
" " Plugin key-mappings.
" " Note: It must be "imap" and "smap".  It uses <Plug> mappings.
" imap <C-k>     <Plug>(neosnippet_expand_or_jump)
" smap <C-k>     <Plug>(neosnippet_expand_or_jump)
" xmap <C-k>     <Plug>(neosnippet_expand_target)

" " SuperTab like snippets behavior.
" " Note: It must be "imap" and "smap".  It uses <Plug> mappings.
" "imap <expr><TAB>
" " \ pumvisible() ? "\<C-n>" :
" " \ neosnippet#expandable_or_jumpable() ?
" " \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
" smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
" \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" " " For conceal markers.
" " if has('conceal')
" "   set conceallevel=2 concealcursor=niv
" " endif

" Plug 'Shougo/neosnippet-snippets'
" ---------------------------------------------------------------------

" ---------------------------------------------------------------------
" tags show
Plug 'majutsushi/tagbar'
" sudo apt install exuberant-ctags
" ---------------------------------------------------------------------


" markdown预览
" if you don't have nodejs and yarn
" use pre build
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}
let g:mkdp_auto_start = 1
let g:mkdp_open_to_the_world = 1
let g:mkdp_port = 8822
let g:mkdp_echo_preview_url = 1

" terminal
" 支持REPLs(read-eval-print-loop)
Plug 'kassio/neoterm'

" 编辑相关
"
" 生成递增/减数字、日期
" Plug 'vim-scripts/VisIncr'
" 自动补全引号括号
" http://www.wklken.me/posts/2015/06/07/vim-plugin-delimitmate.html
" Plug 'Raimondi/delimitMate'
Plug 'kien/rainbow_parentheses.vim'
" Plug 'tpope/vim-surround'

" 查找/移动/标记
"
" % 在配对标签自动跳转
Plug 'adelarsq/vim-matchit'

call plug#end()            " required
