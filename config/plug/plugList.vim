" 启动时自动安装插件
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif


" ==========================================================================================
" plugin list
call plug#begin('~\.config\nvim\plugins')

" =============================================
" 美化插件
Plug 'joshdick/onedark.vim' " One Dark 主题配色

Plug 'mhinz/vim-startify' " 启动菜单

Plug 'itchyny/lightline.vim' " 状态栏

Plug 'luochen1990/rainbow' " 彩虹括号
" =============================================

" =============================================
" 功能插件
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' } " 文件目录插件
Plug 'kristijanhusak/defx-git'
Plug 'kristijanhusak/defx-icons'
" =============================================

" =============================================
" 特殊插件
Plug 'neoclide/coc.nvim',{'branch':'release'}
" =============================================

Plug 'ryanoasis/vim-devicons' " 符号字体,必须最后加载，故放在最后

call plug#end()
" end
" ==========================================================================================






" ==========================================================================================
" config list
" 插件配置文件，部分插件的配置文件若不在 call plug#end() 之后加载的话会报错，所以把所有配置文件统一放在最后

" =============================================
" 美化插件
source ~\.config\nvim\config\plug\plugconfig\plugin-lightline.vim " lightline 配置文件

source ~\.config\nvim\config\plug\plugconfig\plugin-vim-startify.vim " vim-startify 配置文件

source ~\.config\nvim\config\plug\plugconfig\plugin-rainbow.vim " rainbow 配置文件
" =============================================

" =============================================
" 功能插件
source ~\.config\nvim\config\plug\plugconfig\plugin-defx.vim " defx 配置文件
source ~\.config\nvim\config\plug\plugconfig\plugin-defx-git.vim  " defx-git 配置文件
source ~\.config\nvim\config\plug\plugconfig\plugin-defx-icons.vim  " defx-icons 配置文件
" =============================================

source ~\.config\nvim\config\plug\plugconfig\plugin-coc.vim " coc 配置文件

" end
" ==========================================================================================