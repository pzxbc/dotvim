source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/extended.vim
source ~/.vim_runtime/vimrcs/file_types.vim
source ~/.vim_runtime/vimrcs/plugins.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim

try
source ~/.vim_runtime/my_configs_local.vim
catch
endtry


" 顺序
" 基础 vim 和 neovim 通用
" basic.vim
" 非基础配置
" extended.vim
" " 特别文件
" file_types.vim
" " 插件
" plugins.vim
" " 插件配置
" plugins_config.vim

