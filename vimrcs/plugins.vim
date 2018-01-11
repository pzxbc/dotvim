""""""""""""""""""""""""""""""
" => 插件管理 vim-plug
""""""""""""""""""""""""""""""
" 具体插件管理的使用参考vim-plug
" https://github.com/junegunn/vim-plug

call plug#begin('~/.vim_runtime/bundle')

" UI 颜色
"
" 主题
" Plugin 'fugalh/desert.vim'
" 终端下不能正常显示
" Plugin 'altercation/vim-colors-solarized'
" Plug 'tomasr/molokai'
Plug 'lifepillar/vim-solarized8'

" 布局
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-airline'
Plug 'nathanaelkane/vim-indent-guides'

" vim操作
Plug 'lifepillar/vim-cheat40'

" 文件操作相关
"
" 文件、缓存快速打开
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'vim-scripts/bufexplorer.zip'
Plug 'xolox/vim-misc'
" Plug 'xolox/vim-session'

" 编辑相关
"
" 生成递增/减数字、日期
Plug 'vim-scripts/VisIncr'
" 自动补全引号括号
" http://www.wklken.me/posts/2015/06/07/vim-plugin-delimitmate.html
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-commentary'
Plug 'editorconfig/editorconfig-vim'
Plug 'szw/vim-maximizer'
Plug 'kien/rainbow_parentheses.vim'
Plug 'tpope/vim-surround'
Plug 'godlygeek/tabular'
" 删掉了CompleteDone事件，兼容Vim7.3
" Plug '~/.vim_runtime/bundle/vim-auto-save'
Plug '907th/vim-auto-save'

" 查找/移动/标记
"
" % 在配对标签自动跳转
Plug 'vim-scripts/matchit.zip'
Plug 'mileszs/ack.vim'
Plug '~/.vim_runtime/bundle/mark'

" 程序开发相关
"
" Json语法高亮和缩进
" 没有添加什么实质性的功能，反而配色与molokai主题冲突，导致类型区分不明显
" 默认的json已经支持语法错误显示和关键字/值区分颜色显示
" Plugin 'elzr/vim-json'
"
" 代码提示
" Plugin 'Shougo/neocomplete.vim'
Plug 'maralla/completor.vim'
" vim中使用git
Plug 'tpope/vim-fugitive'
Plug 'majutsushi/tagbar'
" 使用vim8新插件ale，支持异步语法检测
Plug 'w0rp/ale'
" vue component highlight
Plug 'othree/html5.vim'
Plug 'posva/vim-vue'

" All of your Plugins must be added before the following line
call plug#end()            " required
