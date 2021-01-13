"Genernal
"use vim keys not vi mode
set nocompatible 
"syntax highlight
syntax on
filetype plugin indent on
set encoding=utf-8
"set laststatus=2
"set cursorline
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
set clipboard=unnamedplus
map <C-c> "+y


" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
" vim-plug
call plug#begin('~/.vim/plugged')
" Make sure you use single quotes

" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}


" Initialize plugin system
call plug#end()


" =====
" ===== coc.vim
" =====
let g:coc_global_extensions = [
    \ 'coc-json',
    \ 'coc-vimlsp']
" TextEdit might fail if hidden is not set.
set hidden
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=100
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunctio\

" Use <c-space> to trigger completion.
" inoremap <silent><expr> <C-space> coc#refresh()
" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
