
call defx#custom#option('_', {
  \ 'resume': 1,
  \ 'winwidth': 30,
  \ 'split': 'vertical',
  \ 'direction': 'topleft',
  \ 'show_ignored_files': 0,
  \ 'columns': 'mark:indent:git:icons:filename:type',
  \ 'root_marker': '[in]: ',
  \ })

call defx#custom#column('git', 'indicators', {
  \ 'Modified'  : '✹',
  \ 'Staged'    : '✚',
  \ 'Untracked' : '✭',
  \ 'Renamed'   : '➜',
  \ 'Unmerged'  : '═',
  \ 'Ignored'   : '☒',
  \ 'Deleted'   : '✖',
  \ 'Unknown'   : '?'
  \ })

call defx#custom#column('git', 'column_length', 1)

nnoremap <silent> <Leader>e
      \ :<C-u>Defx -resume -toggle -buffer-name=tab`tabpagenr()`<CR>
nnoremap <silent> <Leader>F
      \ :<C-u>Defx -resume -buffer-name=tab`tabpagenr()` -search=`expand('%:p')`<CR>


autocmd FileType defx call s:defx_mappings()

function! s:defx_mappings() abort
  nnoremap <silent><buffer><expr> <CR>  defx#is_directory()?                       
                                      \ defx#do_action('open_or_close_tree') :
                                      \ defx#do_action('multi', ['drop'])           " 打开或者关闭文件夹，文件     
  nnoremap <silent><buffer><expr> .     defx#do_action('toggle_ignored_files')      " 显示隐藏文件
  nnoremap <silent><buffer><expr> <C-r> defx#do_action('redraw')
  nnoremap <silent><buffer><expr> st    defx#do_action('multi', [['drop', 'tabnew'], 'quit'])
endfunction




" nnoremap <silent><buffer><expr> <CR>  defx#do_action('drop')
" nnoremap <silent><buffer><expr> l     <sid>defx_toggle_tree()
" nnoremap <silent><buffer><expr> h     defx#async_action('cd', ['..'])
" nnoremap <silent><buffer><expr> st    defx#do_action('multi', [['drop', 'tabnew'], 'quit'])
" nnoremap <silent><buffer><expr> s     defx#do_action('open', 'botright vsplit')
" nnoremap <silent><buffer><expr> i     defx#do_action('open', 'botright split')
" nnoremap <silent><buffer><expr> P     defx#do_action('open', 'pedit')
" nnoremap <silent><buffer><expr> K     defx#do_action('new_directory')
" nnoremap <silent><buffer><expr> N     defx#do_action('new_multiple_files')
" nnoremap <silent><buffer><expr> dd    defx#do_action('remove_trash')
" nnoremap <silent><buffer><expr> r     defx#do_action('rename')
" nnoremap <silent><buffer><expr> x     defx#do_action('execute_system')
" nnoremap <silent><buffer><expr> .     defx#do_action('toggle_ignored_files')
" nnoremap <silent><buffer><expr> yy    defx#do_action('yank_path')
" nnoremap <silent><buffer><expr> ~     defx#async_action('cd')
" nnoremap <silent><buffer><expr> q     defx#do_action('quit')
" nnoremap <silent><buffer><expr> <Tab> winnr('$') != 1 ?
" 	\ ':<C-u>wincmd w<CR>' :
" 	\ ':<C-u>Defx -buffer-name=temp -split=vertical<CR>'
" " Defx's buffer management
" nnoremap <silent><buffer><expr> q      defx#do_action('quit')
" nnoremap <silent><buffer><expr> se     defx#do_action('save_session')
" nnoremap <silent><buffer><expr> <C-r>  defx#do_action('redraw')
" nnoremap <silent><buffer><expr> <C-g>  defx#do_action('print')
" " File/dir management
" nnoremap <silent><buffer><expr><nowait> c  defx#do_action('copy')
" nnoremap <silent><buffer><expr><nowait> m  defx#do_action('move')
" nnoremap <silent><buffer><expr><nowait> p  defx#do_action('paste')
" nnoremap <silent><buffer><expr><nowait> r  defx#do_action('rename')
" nnoremap <silent><buffer><expr> dd defx#do_action('remove_trash')
" nnoremap <silent><buffer><expr> K  defx#do_action('new_directory')
" nnoremap <silent><buffer><expr> N  defx#do_action('new_multiple_files')
" 	" Jump
" nnoremap <silent><buffer>  [g :<C-u>call <SID>jump_dirty(-1)<CR>
" nnoremap <silent><buffer>  ]g :<C-u>call <SID>jump_dirty(1)<CR>
" 	" Change directory
" nnoremap <silent><buffer><expr><nowait> \  defx#do_action('cd', getcwd())
" nnoremap <silent><buffer><expr><nowait> &  defx#do_action('cd', getcwd())
" nnoremap <silent><buffer><expr> <BS>  defx#async_action('cd', ['..'])
" nnoremap <silent><buffer><expr> ~     defx#async_action('cd')
" nnoremap <silent><buffer><expr> u   defx#do_action('cd', ['..'])
" nnoremap <silent><buffer><expr> 2u  defx#do_action('cd', ['../..'])
" nnoremap <silent><buffer><expr> 3u  defx#do_action('cd', ['../../..'])
" nnoremap <silent><buffer><expr> 4u  defx#do_action('cd', ['../../../..'])
" 	" Selection
" nnoremap <silent><buffer><expr> *  defx#do_action('toggle_select_all')
" nnoremap <silent><buffer><expr><nowait> <Space>
" 	\ defx#do_action('toggle_select') . 'j'
" nnoremap <silent><buffer><expr> S  defx#do_action('toggle_sort', 'Time')
" nnoremap <silent><buffer><expr> C
" 	\ defx#do_action('toggle_columns', 'indent:mark:filename:type:size:time')
   