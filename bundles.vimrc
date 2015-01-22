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
"
" original repos on github


" vim-scripts repos


" non github repos
