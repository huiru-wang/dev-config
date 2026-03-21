"================================
"=========    basic     =========
"================================
set number
set relativenumber
set updatetime=100
set autoindent      "自动缩进"
set smartindent
set mouse-=a
set tabstop=4
set expandtab
set shiftwidth=4
syntax on
set cursorline
set wrap            "超出折叠"
set autowrite
set wildmenu        "tab提示命令"
set encoding=utf-8
set hlsearch        "搜索高亮"
set incsearch       "搜索高亮同步"
set ignorecase      "搜索高亮忽略大小写"
set smartcase
set list            "显示末尾的空格"
set listchars=tab:→\ ,trail:☜,extends:…
set scrolloff=8     "保持光标距底部8行"
" set termguicolors “颜色加深
set splitright
set splitbelow
set foldenable      "开启代码折叠"
set foldmethod=expr
set foldcolumn=1    "显示被折叠的函数"
set foldlevel=99
set foldlevelstart=99
set nobackup
set clipboard=unnamedplus " 使用系统粘贴板
set spelllang=en,cjk      " 拼写检查
set nospell

"================================
"=========   mapping    =========
"================================
" :verbose check keymap
let mapleader = " "
inoremap jk <Esc>
nnoremap <leader>w :w<CR>
"nnoremap <S-h> ^ " H绑定为home
"nnoremap <S-l> $ " L绑定为end


"========================
"=====  easymotion  =====
"========================
"set easymotion


"========================
"=====   surround   =====
"ciw
"========================

"========================
"=====     sneak    =====
"s<char><char>
"========================
"set sneak
