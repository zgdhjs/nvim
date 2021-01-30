if &compatible
	set nocompatible
endif

" 编码格式
set encoding=utf-8

" 行号
set number

" 启用鼠标
set mouse=a

" 语法高亮
syntax enable
syntax on

" 真彩显示
if has("termguicolors")
    set termguicolors
endif

" 主题配色
colorscheme onedark

" set modifiable

" 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存
set hidden

" 关闭备份
set nobackup
set nowritebackup

set updatetime=100

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c