" ########### mu 自动补全插件 ###########
Plugin 'lifepillar/vim-mucomplete'
"MUcomplete is fully customizable. See :help mucomplete.txt for detailed documentation.
"强制性要求
set completeopt+=menu,menuone
" For automatic completion, you most likely want one of:
"set completeopt+=noinsert " or
set completeopt+=noinsert,noselect

set shortmess+=c
"If you want to enable automatic completion
"let g:mucomplete#enable_auto_at_startup = 1
