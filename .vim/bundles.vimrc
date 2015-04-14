"==========================================
" Author:  JeremyHe
" Version: 1.0
" Email: jeremyhe.cn@gmail.com
" Blog: http://www.J-Cn.me
" Last_modify: 2015-04-13 21:46  
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
"Plugin 'ervandew/supertab'	



" ########## ctrlp 文件搜索 ######
Plugin 'kien/ctrlp.vim'
let g:ctrlp_map = '<leader>cp'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }
"  \ 'link': 'some_bad_symbolic_links',
nmap <leader>cm :CtrlPMRUFiles<CR>


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


" ########### 多光标 ########### 
Plugin 'terryma/vim-multiple-cursors'
let g:multi_cursor_exit_from_visual_mode = 0
let g:multi_cursor_exit_from_insert_mode = 0


" ########### Gundo ########### 
Plugin 'sjl/gundo.vim'


" ########### Vim-task ###########
Plugin 'samsonw/vim-task'
noremap <leader>cc :call Toggle_task_status()<CR>


" ########### markdown ########### 
Plugin 'plasticboy/vim-markdown'
let g:vim_markdown_no_default_key_mappings=1
au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn} nmap <F9> :Toc<CR>
au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn} imap <F9> <ESC>:Toc<CR>


" ########### 快速注释 ########### 
Plugin 'scrooloose/nerdcommenter'
let NERDCreateDefaultMappings = 0
map <Leader>c<space> <plug>NERDCommenterToggle


" ########### YCM 自动补全插件 ###########
Plugin 'Valloric/YouCompleteMe'
" 在注释中也可以补全  
let g:ycm_complete_in_comments=1  
" 在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
" 注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0
" mapping
"nmap <leader>gd :YcmDiags<CR>
"nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>           " 跳转到申明处
"nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>            " 跳转到定义处
"nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
" 直接触发自动补全
let g:ycm_key_invoke_completion = '<M-/>'
" 黑名单,不启用
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'gitcommit' : 1,
      \}
" 输入第一个字符就开始补全  
"let g:ycm_min_num_of_chars_for_completion=1


call vundle#end()            " required
filetype plugin indent on    " required
