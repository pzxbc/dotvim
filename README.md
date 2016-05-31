# README

基于[Ultimate vimrc](https://github.com/amix/vimrc)的自定义`Vim`配置文件，改
动已经很大了，插件管理方式等都更改了，需要手动合并[Ultimate vimrc](https://github.com/amix/vimrc)
的更新。

配置对`Vim`的要求：+Python && version > 7.3

## 安装

### 类Debian系统
安装`Vim`。`vim-nox`版本是增加了脚本支持版本，包括python、lua等脚本的支持。
``` bash
sudo apt-get install vim-nox
```

克隆配置代码到本地
``` bash
git clone https://github.com/pzxbc/dotvim.git ~/.vim_runtime
```

安装需要的第三方工具
``` bash
sudo apt-get install ack
sudo apt-get install ctags
```

进入`~/.vim_runtime`目录，执行
``` bash
./install_awesome_vimrc.sh
```

打开`Vim`，执行`:VundleInstall`命令安装插件，然后重启`Vim`就安装完毕了。

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

