# Vim问题调试



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

字体
putty设置
anti-


plugin的改变
