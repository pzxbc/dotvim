""""""""""""""""""""""""""""""
" => 插件管理 vim-plug
""""""""""""""""""""""""""""""
" 具体插件管理的使用参考vim-plug
" https://github.com/junegunn/vim-plug

call plug#begin('~/.vim_runtime/bundle')

" 选出常用的 其他都暂时屏蔽
" 主题
Plug 'lifepillar/vim-solarized8'
" 布局
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-airline'
" Plug 'nathanaelkane/vim-indent-guides'
" vim操作
Plug 'lifepillar/vim-cheat40'
" 文件查找
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" 目录查看
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
" 缓冲区查看
Plug 'vim-scripts/bufexplorer.zip'
" 窗口最大化
Plug 'szw/vim-maximizer'
" 自动保存
Plug '907th/vim-auto-save'
" 高亮标记
Plug '~/.vim_runtime/bundle/mark'

" 通用开发工具
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
" " 自动补全
" Plug 'maralla/completor.vim'
" Plug 'ferreum/completor-tmux'
" " decomplete 似乎更好
" Plug 'Shougo/deoplete.nvim'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  " 需要安装pip3 install neovim
  Plug 'roxma/vim-hug-neovim-rpc'
  Plug 'neovim/python-client'
endif
Plug 'wellle/tmux-complete.vim'
Plug 'zchee/deoplete-jedi'

" UI 颜色
"
" 主题
" Plugin 'fugalh/desert.vim'
" 终端下不能正常显示
" Plugin 'altercation/vim-colors-solarized'
" Plug 'tomasr/molokai'


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

" 程序开发相关
"
"
" 代码提示
" " Plugin 'Shougo/neocomplete.vim'
" Plug 'maralla/completor.vim'
" " vim中使用git
" Plug 'tpope/vim-fugitive'
" Plug 'majutsushi/tagbar'
" " vue component highlight
" Plug 'othree/html5.vim'
" Plug 'posva/vim-vue'

" All of your Plugins must be added before the following line
call plug#end()            " required
