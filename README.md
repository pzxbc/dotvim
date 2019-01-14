# README

`Vim`配置要求：

* version >= 8.0
* +Python
* +termguicolors
* +conceal

## Vim安装

### Windows

https://github.com/vim/vim-win32-installer/releases

另外需要安装Python

### Debian

`apt-get`暂时还不能安装`vim8.0`版本，需要手动编译安装

```bash
sudo apt-get install libncurses5-dev libgnome2-dev libgnomeui-dev \
    libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
    libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev \
    python3-dev ruby-dev lua5.1 lua5.1-dev libperl-dev git
sudo apt-get remove vim vim-runtime gvim
sudo apt-get remove vim-tiny vim-common vim-gui-common vim-nox
wget https://github.com/vim/vim/archive/master.zip
unzip master.zip
cd vim-master
./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp=yes \
            --enable-pythoninterp=yes \
            --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu \
            --enable-perlinterp=yes \
            --enable-luainterp=yes \
            --enable-gui=gtk2 \
            --enable-cscope
make VIMRUNTIMEDIR=/usr/local/share/vim/vim80
sudo apt-get install checkinstall
sudo checkinstall

sudo update-alternatives --install /usr/bin/editor editor /usr/local/bin/vim 1
sudo update-alternatives --set editor /usr/local/bin/vim
sudo update-alternatives --install /usr/bin/vi vi /usr/local/bin/vim 1
sudo update-alternatives --set vi /usr/local/bin/vim
```

### MacOS
```bash
brew install vim --with-lua
```

##Vim配置

* 克隆配置文件

  ```bash
  git clone https://github.com/pzxbc/dotvim.git ~/.vim_runtime
  cd ~/.vim_runtime
  # mac & unix
  ./install_awesome_vimrc.sh
  # windows
  ./install_awesome_vimrc.ps1
  ```

* 安装第三方工具

  **MacOS**

  ```bash
  # Python语法检查
  sudo pip install flake8
  # Python 自动补全
  sudo pip install jedi
  # Lua语法检查
  brew install lua --with-completion
  luarocks install luacheck

  # 快速查找
  brew install ack

  ```

  **Windows**

  **Debian**

#### 语法检查

#### 自动补全





安装需要的第三方工具

``` bash
sudo apt-get install ack
sudo apt-get install ctags
```

* 语法检查: `doc/语法检查配置.md`
* 自动补全: doc/自动补全.md


进入`~/.vim_runtime`目录，执行
``` bash
./install_awesome_vimrc.sh
```

打开`Vim`，执行`:PlugInstall`命令安装插件，然后重启`Vim`就安装完毕了。

### 其他系统安装

Todo

## 使用

### 基本使用

重新加载`Vim`配置: `:source $MYVIMRC`

### 插件使用

### vim-session
`vim-session`插件能够保存`Vim`的所有工作状态，包括历史命令、打开的Buffer、窗
口的分割等等，在你重新进入`Vim`时，打开之前的保存的session，可以让你完全恢复
`Vim`之前的工作状态。

#### 创建/打开session: `:OpenSession`
如果`:OpenSession session_name`中的`session_name`是已经存在的session，那么就
打开这个session，如果是不存在的则创建。进入`Vim`后，默认进入名为`default`的session。

### 保存session: `:SaveSession`
退出`Vim`时会自动保存session，当另外一个`Vim`打开了相同的session，可以使用
`:SaveSession!`强制保存session。

非正常退出`Vim`时，session还会处于lock状态，下次进入`Vim`时不能打开被lock的
session。进入目录`~/.vim/session/`，删除对应session的lock文件即可。

## vim配置调试

1\. [查看变量在哪里设置](http://vim.wikia.com/wiki/Debug_unexpected_option_settings)
```
:verbose set tabstop?
```

2\. 查看配置文件执行顺序
```
:scriptnames
```

3\. 调试
http://inlehmansterms.net/2014/10/31/debugging-vim/


## vim to neovim

主题颜色使用了真彩色
truecolor putty 最新版

plugin的改变

neovim python 路径
