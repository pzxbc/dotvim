"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"check the os

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"show the line number
set number


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"为了避免在非 UTF-8 的系统如 Windows 下，菜单和系统提示出现乱码，可同时做这几项设置
set langmenu=zh_CN.UTF-8
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"解决console输出乱码
language message zh_CN.UTF-8

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => run current file
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType lua nmap <buffer> <F5> :!lua %<cr>


"插件设置
let g:Lua_BinPath = 'D:\Binaries-LuaDist-batteries-0.9.8-Windows-x86\bin'

"ctag 配置
"注意第一个命令里的分号是必不可少的。这个命令让vim首先在当前目录里寻找tags文件，
"如果没有找到tags文件，或者没有找到对应的目标，就到父目录中查找，一直向上递归。
"因为tags文件中记录的路径总是相对于tags文件所在的路径，所以要使用第二个设置项来
"改变vim的当前目录。
set tags=tags; 
set autochdir 
"进入代码目录，输入命令ctags -R *，你会发现多了一个tags文件，这个就是索引文件
"Lua tag 生成语法
"ctags --langdef=MYLUA --langmap=MYLUA:.lua --regex-MYLUA="/^.*\s*function\s*(\w+):(\w+).*$/\2/f/" --regex-MYLUA="/^\s*(\w+)\s*=\s*[0-9]+.*$/\1/e/" --regex-MYLUA="/^.*\s*function\s*(\w+)\.(\w+).*$/\2/f/" --regex-MYLUA="/^.*\s*function\s*(\w+)\s*\(.*$/\1/f/" --regex-MYLUA="/^\s*(\w+)\s*=\s*\{.*$/\1/e/" --regex-MYLUA="/^\s*module\s+\"(\w+)\".*$/\1/m,module/" --regex-MYLUA="/^\s*module\s+\"[a-zA-Z0-9._]+\.(\w+)\".*$/\1/m,module/" --languages=MYLUA --excmd=number -R .
"-R . 递归当前目录
"http://blog.csdn.net/zdl1016/article/details/9118579
"set tags=D:\svn-g19\client\tags