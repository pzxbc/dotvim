""""""""""""""""""""""""""""""
" => 插件管理 vim-plug
""""""""""""""""""""""""""""""
" 具体插件管理的使用参考vim-plug
" https://github.com/junegunn/vim-plug

call plug#begin('~/.vim_runtime/bundle')

" 键位映射查看
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
" vim操作查看
Plug 'lifepillar/vim-cheat40'
" 图标
Plug 'ryanoasis/vim-devicons'
" 主题
Plug 'lifepillar/vim-solarized8'
Plug 'drewtempelmeyer/palenight.vim'
" 状态栏
Plug 'itchyny/lightline.vim'
" 窗口最大化
Plug 'szw/vim-maximizer'
" 搜索查找 file buffer tags
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
" % 在配对标签自动跳转
Plug 'adelarsq/vim-matchit'
" 自动保存
Plug '907th/vim-auto-save'
" 高亮标记
Plug '~/.vim_runtime/bundle/mark'
" 字符对齐
Plug 'godlygeek/tabular'
" 括号标识颜色
Plug 'luochen1990/rainbow'
" 通用开发工具
" git
Plug 'tpope/vim-fugitive'
" Linux Commands
Plug 'tpope/vim-eunuch'
" Plug 'dbakker/vim-projectroot'
Plug 'tpope/vim-fugitive'
" 注释
Plug 'tpope/vim-commentary'
" editorconfig
Plug 'editorconfig/editorconfig-vim'
" Markdown preview
" Use prebuild
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
" ide 特性
" coc completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" 使用vim8新插件ale，支持异步语法检测
" C++
" cppcheck http://cppcheck.sourceforge.net/
" sudo apt-get install cppcheck
" 自动补全使用cquery
" https://github.com/cquery-project/cquery
" Plug 'w0rp/ale'
" c++ lint只使用这两个lint就好了，他们可以使用compile_commands.json文件
" CMake生成compile_commands.json文件
" mkdir build
" cd build
" cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=ON ..
" ln -s build/compile_commands.json compile_commands.json
" let g:ale_linters = {
" \   'cpp': ['clangcheck', 'clangtidy'],
" \   'python': ['flake8'],
" \}

" 编辑相关
"
" 生成递增/减数字、日期
" Plug 'vim-scripts/VisIncr'
" 自动补全引号括号
" http://www.wklken.me/posts/2015/06/07/vim-plugin-delimitmate.html
" Plug 'Raimondi/delimitMate'
" Plug 'tpope/vim-surround'

call plug#end()            " required
