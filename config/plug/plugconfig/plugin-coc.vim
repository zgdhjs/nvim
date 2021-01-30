" nnoremap <silent> <Leader>e :CocCommand explorer --toggle<CR>

" 错误及报警提示
let g:coc_status_error_sign = '•'
let g:coc_status_warning_sign = '•'


" 基础插件
let g:coc_global_extensions =[
    \ 'coc-vimlsp',
    \ 'coc-json',
    \ 'coc-toml',
    \ 'coc-yaml',
    \ ]

" tab自动选中补全的第一项
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" 手动调出补全窗口
inoremap <silent><expr> <c-space> coc#refresh()

" 回车选中补全项
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" 使用 [g 和 ]g 来查找前后的代码报错
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" 同词高亮
autocmd CursorHold * silent call CocActionAsync('highlight')

" 重命名变量
nmap <leader>rn <Plug>(coc-rename)

