# LazyVim

## 安装

- [Neovim Install](https://neovim.io/doc/install/)
- [LazyVim Doc](https://www.lazyvim.org/)
- [LazyVim Keybmaps Docs](https://www.lazyvim.org/keymaps)

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

## 常用命令

### 文件操作

| 快捷键 | 说明 |
|--------|------|
| `<leader>e` ⭐ | 打开/关闭文件树 |
| `<leader>ff` ⭐ | 文件搜索 |
| `/` | 文件树内搜索，Enter跳转到对应的文件 |
| `H` | 文件树显示隐藏目录（默认git仓库目录不会显示.gitignore隐藏的文件，需要配置显示） |
| `h` / `j` / `k` / `l` ⭐| 折叠目录 / 向下 / 向上 / 打开目录(打开文件) |
| `<leader>bd` / `:wq` | 关闭文件, `<leader>b`下都是buffer相关操作 |
| `<C-h>` / `<C-l` | 在已打开的文件间切换 |

### 光标移动

| 快捷键 | 说明 |
|--------|------|
| `h j k l` ⭐ | 左下上右 |
| `gg / G` ⭐ | 文件开头/结尾 |
| `n / N` ⭐ | 下一个/上一个搜索结果 |
| `w / b` ⭐ | 下一个/上一个单词开头 |
| `e / ge` | 下一个/上一个单词结尾 |
| `0 / ^` ⭐| 行首/第一个非空字符 |
| `$ / g_` | 行尾/最后一个非空字符 |
| `:[n] / [n]G` | 跳转到指定行 |
| `zz` | 让当前行在屏幕居中 |
| `<C-u> / <C-d>` ⭐| 半页上下滚动 |
| `<C-b> / <C-f>` | 全页上下滚动 |
| `*` ⭐ | 在当前文件搜索当前光标所在的单词 |
| `/pattern / ?pattern` ⭐ | 向下/向上搜索 |
| `<leader>sg` / `<leader>/` ⭐ | grep 项目关键字搜索 （<C-b> / </C-f> 滚动预览框）|
| `<leader>ss` ⭐ | 在LSP支持的语言内按照结构搜索（类、函数） |
| `<leader>ff` ⭐ | 项目文件名搜索 |
| `<C-o>` ⭐ | 返回上一个位置 |
| `<C-i>` ⭐ | 前进到下一个位置 |

### 标记操作

| 快捷键 | 说明 |
|--------|------|
| `m{a-z}` ⭐ | 设置本地标记（单个文件内） |
| `m{A-Z}` ⭐ | 设置全局标记（整个项目） |
| `` `{mark} `` ⭐ | 跳转到标记精确位置 |
| `:delmarks a` | 删除标记 a |
| `:delmarks A` | 删除标记 A |
| `:delmarks a-z` | 删除所有小写标记 |
| `:delmarks A-Z` | 删除所有大写标记 |

### 代码操作（需要对应LSP）

| 快捷键 | 说明 |
|--------|------|
| `gd` ⭐ | 跳转到定义 |
| `gr` | 查找所有引用 |
| `K` ⭐ | 显示悬停文档 |
| `<leader>cf` ⭐ | 格式化（需要LSP） |
| `<leader>ss` | 按结构浏览文件 |
| `<leader>gs` ⭐ | Git: 查看git status |
| `<leader>gl` ⭐ | Git: 查看git commit记录（<C-b> / </C-f> 滚动预览框） |

### 会话管理

会话识别规则：
- 打开过的目录会被识别为会话（相当于 recent project）
- 识别最高优先级为 git 目录

| 快捷键 | 说明 |
|--------|------|
| `<leader>qS` | 选择会话 |

## 插件管理

插件和Neovim配置：`./.config/nvim`

插件市场推荐：`:LazyExtras`

推荐：
- lang.json
- lang.markdown
- 


| 插件 | 说明 |
|------|------|
| [snacks.nvim](https://github.com/folke/snacks.nvim) | 文件树、Dashboard 增强 |
| [blink.cmp](https://github.com/saghen/blink.cmp) | 代码补全（markdown/tex 文件禁用） |
| `tokyonight` | 配色主题 |
| `tokyonight` | 配色主题 |

## LSP

```shell
:MasonInstall <LSP-Server>
```
- json-lsp            " JSON LSP
- lua-language-server " Lua LSP
- marksman            " Markdown LSP
- shfmt               " Shell 格式化
- stylua              " Lua 格式化
- tree-sitter-cli     " 语法高亮
- typescript-language-server  " TS/JS LSP
- markdown-toc        " 生成目录工具，看你是否用到
- markdownlint-cli2   " lint 工具
- marksman            " markdown LSP
