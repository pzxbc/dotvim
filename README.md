# README


已切换至NeoVim，也强烈推荐大家切换至NeoVim！切换无成本！！！

![neovim最终预览](https://github.com/pzxbc/dotvim/blob/master/doc/nvim-preview.png)

## NeoVim安装配置

### 安装

**Debian**

``` bash
sudo apt install neovim
```

**MacOS**

```
brew install neovim
```

**Ubuntu**

https://github.com/neovim/neovim/wiki/Installing-Neovim#ubuntu


### 配置

**修改默认编辑器**

``` bash
sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
sudo update-alternatives --config vi
sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
sudo update-alternatives --config vim
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
sudo update-alternatives --config editor
```

**使用`Vim`配置文件**

``` bash
mkdir -p .config/nvim
touch init.vim
```

`init.vim`中添加下面内容

```
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
```

> 详细说明: 打开`nvim`，输入命令`:help nvim-from-vim`

## Vim配置安装

### 下载配置文件

``` bash
git clone https://github.com/pzxbc/dotvim.git ~/.vim_runtime
cd ~/.vim_runtime
./install_awesome_vimrc.sh
```


### `Python`插件支持

创建Host。最新版的`deoplete`插件需要`Python3.6.1+`

``` bash
cd .vim_runtime
python3 -m venv py3nvim
source python3nvim/bin/activate
pip install neovim
# Python补全插件依赖库
pip install jedi
```

修改`.vim_runtime/my_configs.vim`，指定Host

> `Ubuntu 16/18`安装`Python3.7`
> ``` bash
> sudo apt install software-properties-common
> sudo add-apt-repository ppa:deadsnakes/ppa
> sudo apt update
> sudo apt isntall python3.7
> sudo apt install python3.7-venv
> ```

> `Python Host`是给基于`Python`语言的插件提供与`NeoVim`通信的服务端，基于RPC调用。如果有其他语言插件也需要安装对应`Host`。这种插件机制叫做[remote plugins](https://zhuanlan.zhihu.com/p/40696208)

## 主题以及字体配置

主题使用了`TrueColor`主题`palenight`，所以终端需要支持`TrueColor`

* `Windows`上建议使用最新开发版的`Putty`(18年12月开发版是支持`TrueColor`的)
* `Mac`上使用`iTerm2`

由于使用了`vim-devicons`插件，需要`Nerd Font compatible font `字体支持，不然会出现方块字。目前我使用的字体是[SauceCodePro NF](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/SourceCodePro/Regular/complete)

字体安装参考[这里](https://github.com/ryanoasis/nerd-fonts#font-installation)，如果一开始不想麻烦安装字体，在`vimrcs/plugins.vim`中注释`vim-devicons`插件就好。

## 使用 

1. [SSH客户端配置](https://github.com/pzxbc/dotvim/blob/master/doc/SSH%E5%AE%A2%E6%88%B7%E7%AB%AF%E9%85%8D%E7%BD%AE.md)
2. [语法检查配置](https://github.com/pzxbc/dotvim/blob/master/doc/%E8%AF%AD%E6%B3%95%E6%A3%80%E6%9F%A5%E9%85%8D%E7%BD%AE.md)


