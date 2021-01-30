let g:clap_layout = { 'relative': 'editor' }

nnoremap <silent> <Leader>ff :<C-u>Clap files ++finder=rg --ignore --hidden --files<cr>