" ########### YCM 自动补全插件 ###########
Plugin 'Valloric/YouCompleteMe'
" 在注释中也可以补全  
let g:ycm_complete_in_comments=1  
" 在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
" 注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1

" mapping
nnoremap <leader>jl :YcmCompleter GoToDeclaration<CR>           " 跳转到申明处
nnoremap <leader>jf :YcmCompleter GoToDefinition<CR>            " 跳转到定义处
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>

let g:ycm_auto_trigger = 1
let g:ycm_confirm_extra_conf = 0
" 输入第一个字符就开始补全  
let g:ycm_min_num_of_chars_for_completion = 2
"let g:ycm_key_list_select_completion = ['<TAB>', '<C-n>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<S-TAB>', '<C-p>', '<Up>']
"let g:SuperTabDefaultCompletionType = '<C-n>'
"let g:ycm_key_invoke_completion = '<c-z>'

" <CR>: close popup and save indent.
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"回车即选中当前项
inoremap <expr> <CR>       pumvisible() ? "\<space>\<Esc>xa" : "\<CR>"
"inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"function! s:my_cr_function()
  ""return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  "" For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
"endfunction

let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
			\ 'cs,lua,javascript': ['re!\w{2}'],
			\ }

let g:ycm_python_binary_path = '/usr/bin/python3'

" 设置在下面几种格式的文件上屏蔽ycm
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'nerdtree' : 1,
      \ 'infolog' : 1,
      \}

" 设置在下面几种格式的文件上使用ycm
"let g:ycm_filetype_whitelist = {
      "\ 'markdown' : 1,
      "\}

