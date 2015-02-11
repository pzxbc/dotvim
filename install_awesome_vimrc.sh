cd ~/.vim_runtime

echo 'set runtimepath+=~/.vim_runtime/bundle/Vundle.vim

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/file_types.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry' > ~/.vimrc

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
