""""""""""""""""""""""""""""""
" => 插件管理 vim-plug
""""""""""""""""""""""""""""""
" 具体插件管理的使用参考vim-plug
" https://github.com/junegunn/vim-plug

call plug#begin('~/.vim_runtime/bundle')

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
      \   'left': [ [ 'mode', 'paste' ], [ 'filename' ], ['ctrlpmark'] ],
      \   'right': [ [ 'lineinfo' ], ['percent'], [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'component_function': {
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

" 图标
Plug 'ryanoasis/vim-devicons'
" vim操作
Plug 'lifepillar/vim-cheat40'
" 文件查找
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" 目录查看
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
" 缓冲区查看
Plug 'vim-scripts/bufexplorer.zip'
" 窗口最大化
Plug 'szw/vim-maximizer'
" 自动保存
Plug '907th/vim-auto-save'
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
Plug 'ervandew/supertab'

" Plug 'autozimu/LanguageClient-neovim', {
"     \ 'branch': 'next',
"     \ 'do': 'bash install.sh',
"     \ }
" https://github.com/zchee/deoplete-jedi/wiki/Setting-up-Python-for-Neovim
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
" Tmux 补齐
Plug 'wellle/tmux-complete.vim'
" Python 编程
Plug 'zchee/deoplete-jedi'
" python 补全使用https://github.com/palantir/python-language-server
"
" ---------------------------------------------------------------------
" 代码片段
Plug 'Shougo/neosnippet.vim'
" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" " For conceal markers.
" if has('conceal')
"   set conceallevel=2 concealcursor=niv
" endif

Plug 'Shougo/neosnippet-snippets'
" ---------------------------------------------------------------------

" ---------------------------------------------------------------------
" tags show
Plug 'majutsushi/tagbar'
" sudo apt install exuberant-ctags
" nmap <F8> :TagbarToggle<CR>
map <Leader>tb :TagbarOpen fj<CR>
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
" Usage:
" :Tnew
" :vertical Tnew
" 参考:help terminal
tnoremap <Esc> <C-\><C-n>
tnoremap <expr> <C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'
inoremap <leader>rf <Esc>:TREPLSendFile<CR>
inoremap <leader>rl <Esc>:TREPLSendLine<CR>
vnoremap <leader>rs <Esc>:TREPLSendSelection<CR>
nnoremap <leader>rf :TREPLSendFile<CR>
nnoremap <leader>rl :TREPLSendLine<CR>

"
" sudo apt install cargo
" function! BuildComposer(info)
"   if a:info.status != 'unchanged' || a:info.force
"     if has('nvim')
"       !cargo build --release
"     else
"       !cargo build --release --no-default-features --features json-rpc
"     endif
"   endif
" endfunction

" Plug 'euclio/vim-markdown-composer', { 'do': function('BuildComposer') }
" 文件操作相关
"
" 文件、缓存快速打开
" Plug 'ctrlpvim/ctrlp.vim'
" Plug 'xolox/vim-misc'
" Plug 'xolox/vim-session'

" 编辑相关
"
" 生成递增/减数字、日期
" Plug 'vim-scripts/VisIncr'
" 自动补全引号括号
" http://www.wklken.me/posts/2015/06/07/vim-plugin-delimitmate.html
" Plug 'Raimondi/delimitMate'
" Plug 'kien/rainbow_parentheses.vim'
" Plug 'tpope/vim-surround'
" 删掉了CompleteDone事件，兼容Vim7.3
" Plug '~/.vim_runtime/bundle/vim-auto-save'

" 查找/移动/标记
"
" % 在配对标签自动跳转
" Plug 'vim-scripts/matchit.zip'
" Plug 'mileszs/ack.vim'

" " vue component highlight
" Plug 'othree/html5.vim'
" Plug 'posva/vim-vue'

" All of your Plugins must be added before the following line
call plug#end()            " required
