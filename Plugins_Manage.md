## 使用git管理配置

### 提交修改

```Shell
git status
git add
git commit
git push origin master
```

### 克隆配置至其他机器

```
git clone http://github.com/pzxbc/dotvim
git submodule init
git submodule update
```

## 插件管理(使用git与pathogen)

### 安装新的插件

```
# git submodule add 插件git仓库地址(也可以是http地址) 存放插件目录(自己修改源码的放在sources_forked目录中，直接使用的放在sources_non_forked目录中)
git submodule add git://github.com/tpope/vim-markdown.git sources_non_forked/vim-markdown
```

### 升级插件

```
cd .vim_runtime/sources_non_forked/vim-markdown #插件目录
git pull origin master
```

### 升级所有插件

```
cd .vim_runtime/sources_non_forked
git submodule foreach git pull origin master
```

### 删除插件

```
git rm sources_non_forked/vim-markdown #插件目录
```
