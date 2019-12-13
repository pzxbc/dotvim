source ~/.vim_runtime/vimrcs/plugins.vim

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/extended.vim
source ~/.vim_runtime/vimrcs/file_types.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry


" 顺序
" 基础 vim 和 neovim 通用
" basic.vim
" " 特别平台的 比如truecolor neovim
" extended.vim
" " 特别文件
" file_types.vim
" " 插件
" plugins.vim
" " 插件配置
" plugins_config.vim
" " maps 在最后，保证映射不被覆盖
" maps.vim

