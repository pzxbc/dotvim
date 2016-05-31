""""""""""""""""""""""""""""""
" => Set for Vundle.vim and plugins
""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim_runtime/bundle/Vundle.vim
call vundle#begin('~/.vim_runtime/bundle')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.

" UI 颜色
"
" 主题
" Plugin 'fugalh/desert.vim'
" 终端下不能正常显示
" Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'

" 布局
" let g:indentLine_noConcealCursor=""
" 不能正确处理json中引号的显隐
" Plugin 'Yggdroot/indentLine'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'bling/vim-airline'

" 文件操作相关
"
" 文件、缓存快速打开
Plugin 'ctrlpvim/ctrlp.vim'
"Plugin 'Shougo/unite.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/bufexplorer.zip'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'

" 编辑相关
"
" 生成递增/减数字、日期
Plugin 'vim-scripts/VisIncr'
" 自动补全引号括号
" http://www.wklken.me/posts/2015/06/07/vim-plugin-delimitmate.html
Plugin 'Raimondi/delimitMate'
Plugin 'tpope/vim-commentary'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'szw/vim-maximizer'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'tpope/vim-surround'
Plugin 'godlygeek/tabular'
" 删掉了CompleteDone事件，兼容Vim7.3
Plugin 'file:///~/.vim_runtime/bundle/vim-auto-save'

" 查找/移动/标记
"
" % 在配对标签自动跳转
Plugin 'vim-scripts/matchit.zip'
Plugin 'mileszs/ack.vim'
Plugin 'file:///~/.vim_runtime/bundle/mark'

" 程序开发相关
"
" Json语法高亮和缩进
" 没有添加什么实质性的功能，反而配色与molokai主题冲突，导致类型区分不明显
" 默认的json已经支持语法错误显示和关键字/值区分颜色显示
" Plugin 'elzr/vim-json'
"
" 代码提示
Plugin 'Shougo/neocomplete.vim'
" vim中使用git
Plugin 'tpope/vim-fugitive'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/syntastic'

" The following are examples of different formats supported.
"
" plugin on GitHub repo
" Plugin 'pzxbc/vim-kv'
" Plugin 'terryma/vim-expand-region'
" Plugin 'xolox/vim-easytags'
" Plugin 'Lokaltog/vim-easymotion'
" Plugin 'davidhalter/jedi-vim'
" Plugin 'terryma/vim-multiple-cursors'
" Plugin 'xolox/vim-shell'
" Plugin 'Shougo/vimshell.vim'
" Plugin 'ervandew/supertab'
" Plugin 'vim-scripts/YankRing.vim'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" Plugin 'file:///Users/gzpengzhangxiang/.vim_runtime/bundle/peaksea'
" 修改了部分颜色，更适配terminal和GUI
" Plugin 'file:///~/.vim_runtime/bundle/peaksea'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
