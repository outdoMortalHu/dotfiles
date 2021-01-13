"Genernal
"use vim keys not vi mode
set nocompatible 
"syntax highlight
syntax on
filetype plugin on
set encoding=utf-8
set laststatus=2
set cursorline

"在状态行上显示光标所在位置的行号和列号 
set ruler
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)
set nu

"高亮显示匹配的括号
set showmatch

"为C程序提供自动缩进
set smartindent

"制表符为4 
set tabstop=4

"统一缩进为4 
set softtabstop=4 

"自动缩进空白长度
set shiftwidth=4

"用空格代替制表符 
set expandtab

"智能TAB
set smarttab

"(2)注释：选中文本后，输入;c即可注释，输入;u 即可取消注释"
"vmap <silent> ;c :s/^/\/\//<CR>:noh<CR>
"vmap <silent> ;u :s/\/\///<CR>:noh<CR>
"配色选择。可以去“ /usr/share/vim ”里面找。
"color desert
"在vim-gnome中
map <C-c> "+y

