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
call vundle#rc()

"     :BundleInstall     install 安装配置的插件
"     :BundleInstall!    update  更新
"     :BundleClean       remove plugin not in list 删除本地无用插件
Bundle 'gmarik/vundle'


" My Bundles here:

" original repos on github
" ############# 目录导航 ###########
" ,n 打开目录
" s/v 分屏打开文件
" 当只剩下目录窗口，则自动退出
Bundle 'scrooloose/nerdtree'
map <leader>n :NERDTreeToggle<CR>
let g:NERDTreeMapOpenSplit = 's'
let g:NERDTreeMapOpenVSplit = 'v'
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | end


" ############ Outline 标签导航 ###########
Bundle 'majutsushi/tagbar'
let g:tagbar_autofocus = 1	

" ########### Super Tab 采用Tab键自动补全 #####
Bundle 'ervandew/supertab'	


" ########## ctrlp 文件搜索 ######
Bundle 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }
"  \ 'link': 'some_bad_symbolic_links',


" ########## airline 状态栏增强 ########
Bundle "bling/vim-airline"

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_right_sep = '«'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'


" vim-scripts repos


" non github repos
