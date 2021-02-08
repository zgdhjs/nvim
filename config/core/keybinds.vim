" 设置 leader 键，例子为空号键，也可以设置为其他的
let g:mapleader=" "
let g:maplocalleader = ','

" buff及tab的操作
noremap <Tab> :bn<CR> " 下一个buffer
noremap <Tab>q :bp<CR> " 上一个buffer
noremap <Leader><Tab> :bd<bar>bp<CR> " 不关闭窗口清除当前buffer
noremap <C-t> :tabnew split<CR> " 以水平排列打开新的tab
noremap <Tab>= :tabn<CR> " 下一个tab
noremap <Tab>- :tabp<CR> " 上一个tab