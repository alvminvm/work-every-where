"==========================================
" Author:  JeremyHe
" Version: 1.0
" Email: jeremyhe.cn@gmail.com
" Blog: http://J-Cn.me
" Last_modify: 2015-01-23
" Description: Vundle插件管理配置文件
" Sections:
"       -> Enable Vundle 启用Vundle插件
"       -> Initial Plugin 加载插件
"==========================================
 
"==========================================
" Enable Vundle 启用Vundle插件
"==========================================
set nocompatible                " be iMproved
filetype off                    " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

"     :PluginInstall     install 安装配置的插件
"     :PluginInstall!    update  更新
"     :PluginClean       remove plugin not in list 删除本地无用插件
Plugin 'gmarik/vundle'



" ############# 目录导航 ###########
" ,n 打开目录
" s/v 分屏打开文件
" 当只剩下目录窗口，则自动退出
Plugin 'scrooloose/nerdtree'
map <leader>n :NERDTreeToggle<CR>
let g:NERDTreeMapOpenSplit = 's'
let g:NERDTreeMapOpenVSplit = 'v'
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | end

" ############# Git目录显示支持 #############"
Plugin 'Xuyuanp/git-NERDTree'

" ############ Outline 标签导航 ###########
Plugin 'majutsushi/tagbar'
let g:tagbar_autofocus = 1	



" ########### Super Tab 采用Tab键自动补全 #####
Plugin 'ervandew/supertab'	



" ########## ctrlp 文件搜索 ######
Plugin 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }
"  \ 'link': 'some_bad_symbolic_links',


" ############# FuzzyFinder #########
Plugin 'L9'
Plugin 'vim-scripts/FuzzyFinder'
map <Leader>ff :FufFile<CR>
map <Leader>fd :FufDir<CR>


" ########## airline 状态栏增强 ########
Plugin 'bling/vim-airline'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_right_sep = '«'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'



" ######### easymotion 快速导航 ########
Plugin 'Lokaltog/vim-easymotion'
nmap <Leader>f <Plug>(easymotion-s)
nmap <Leader><Leader>f <Plug>(easymotion-s2)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map  / <Plug>(easymotion-sn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
let g:EasyMotion_smartcase = 1
hi link EasyMotionTarget Search
hi link EasyMotionTarget2First Search
hi link EasyMotionTarget2Second Search
hi link EasyMotionShade Comment


" ######### markdown table support ###########
Plugin 'dhruvasagar/vim-table-mode'
let g:table_mode_corner = '|'
let g:table_mode_delimiter = '  '


" ############ 主题 ########### 
Plugin 'altercation/vim-colors-solarized'
let g:solarized_termcolors=256

call vundle#end()            " required
filetype plugin indent on    " required
