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

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" vim instant markdown
Plugin 'isnowfy/python-vim-instant-markdown'
" Produce increasing/decreasing columns of numbers, dates, or daynames
Plugin 'vim-scripts/VisIncr'
" Plugin 'tpope/vim-fugitive'
" 自动补全引号括号
" http://www.wklken.me/posts/2015/06/07/vim-plugin-delimitmate.html
Plugin 'Raimondi/delimitMate'
" % 在配对标签自动跳转
Plugin 'vim-scripts/matchit.zip'
Plugin 'pzxbc/vim-kv'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'mileszs/ack.vim'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'bling/vim-airline'
Plugin 'vim-scripts/bufexplorer.zip'
Plugin 'tpope/vim-commentary'
" Plugin 'rygwdn/vim-conque'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/ctrlp.vim'
" Plugin 'sgur/ctrlp-extensions.vim'
" Plugin 'terryma/vim-expand-region'
" Plugin 'xolox/vim-easytags'
" Plugin 'Lokaltog/vim-easymotion'
" Plugin 'tpope/vim-fugitive'
Plugin 'szw/vim-maximizer'
Plugin 'scrooloose/nerdtree'
Plugin 'Yggdroot/indentLine'
" Plugin 'davidhalter/jedi-vim'
" Plugin 'terryma/vim-multiple-cursors'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'xolox/vim-misc'
" Plugin 'xolox/vim-shell'
Plugin 'xolox/vim-session'
" Plugin 'Shougo/vimshell.vim'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
"""""""""""""""""""""""""""""
" snipmate
" Bundle "MarcWeber/vim-addon-mw-utils"
" Bundle "tomtom/tlib_vim"
" Bundle "garbas/vim-snipmate"
" Optional:
" Bundle "honza/vim-snippets"
"""""""""""""""""""""""""""""
Plugin 'godlygeek/tabular'
Plugin 'majutsushi/tagbar'
" Plugin 'vim-scripts/YankRing.vim'
" Plugin 'KabbAmine/zeavim.vim'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" Plugin 'file:///Users/gzpengzhangxiang/.vim_runtime/bundle/peaksea'
" 修改了部分颜色，更适配terminal和GUI
Plugin 'file:///~/.vim_runtime/bundle/peaksea'
Plugin 'file:///~/.vim_runtime/bundle/mark'
" 删掉了CompleteDone事件，兼容Vim7.3
Plugin 'file:///~/.vim_runtime/bundle/vim-auto-save'

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
