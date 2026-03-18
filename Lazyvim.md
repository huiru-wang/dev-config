# LazyVim

## Install

[Neovim Install](https://neovim.io/doc/install/)
[LazyVim Doc](https://www.lazyvim.org/)

```bash
# 判断内核
> uname -m

> tar xzvf Neovim macOS ARM64.tar.gz

# 移动到 /opt 目录 (推荐，避免覆盖系统自带软件)
> sudo mv nvim-macos-arm64 /opt/nvim
> sudo ln -s /opt/nvim/bin/nvim /usr/local/bin/nvim

# 系统设置  -> 隐私与安全性 -> 允许(仍要打开)
> nvim --version

```

## Cheatsheet

### 文件目录操作
```shell
<leader>e          # 打开/关闭文件树
<leader>E          # 打开文件树并定位当前文件
m                  # 添加书签
B                  # 显示所有书签
<leader>ff         # 文件搜索
```

### 光标移动
```shell
## 跨行
h j k l            # 左下上右 (基础)
zz                 # 当前行居中
<C-u> / <C-d>      # 半页上下滚动
<C-b> / <C-f>      # 全页上下滚动
gg / G             # 文件开头/结尾
:[n] / [n]G        # 跳转到指定行

## 行内移动
w / b              # 下一个/上一个单词开头
e / ge             # 下一个/上一个单词结尾
0 / ^              # 行首/第一个非空字符
$ / g_             # 行尾/最后一个非空字符

## 搜索

/pattern / ?pattern     # 向下搜索 / 向上搜索
n / N                   # 下一个/上一个搜索结果
<leader>sg              # grep 项目关键字搜索
<leader>sf              # file 项目文件名搜索
<leader>ss              # structure 文件结构搜索 按类、函数 查看
<C-o>                   # 返回上一个位置
<C-i>                   # 前进到下一个位置
```

### 搜索
```shell
/pattern / ?pattern           # 向下搜索 / 向上搜索
n / N              # 下一个/上一个搜索结果
<leader>sg         # grep 项目关键字搜索
<leader>sf         # file 项目文件名搜索
<leader>ss         # structure 文件结构搜索 按类、函数 查看
<C-o>              # 返回上一个位置
<C-i>              # 前进到下一个位置
```

### 标记操作
```shell
m{a-z}             # 设置本地标记（单个文件内）
m{A-Z}             # 设置全局标记（整个项目）

`{mark}            # 跳转到标记精确位置

:delmarks a        # 删除标记 a
:delmarks A        # 删除标记 A
:delmarks a-z      # 删除所有小写标记
:delmarks A-Z      # 删除所有大写标记
```

### 会话管理
会话识别：
- 打开过的目录会被识别为会话（相当于recent project）
- 识别最高优先级为git目录

```
<leader>qS  # 选择会话
```

### 代码操作（需要对应LSP）
```
gd            # 跳转到定义
gr            # 查找所有引用
K             # 显示悬停文档
<leader> cf   # 格式化（需要LSP）
<leader> ss   # 按结构浏览文件（关键字、函数）
<leader> c[]  # 代码相关操作
```

## 插件管理

### 安装LSP

```shell
:MasonInstall <LSP-Server>
```



```
```

