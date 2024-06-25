plugins+=(zsh-vi-mode)

function zvm_config() {
  ZVM_LINE_INIT_MODE=$ZVM_MODE_INSERT
  ZVM_INSERT_MODE_CURSOR=$ZVM_CURSOR_BLINKING_BEAM
}

# 定义一个执行函数
function jump_end_of_line() {
  zvm_navigation_handler $
}
function jump_start_of_line() {
  zvm_navigation_handler ^
}

function zvm_after_lazy_keybindings() {
  # 当zsh-vi-mode加载时会声明该函数
  zvm_define_widget jump_end_of_line
  zvm_define_widget jump_start_of_line
  # 当监听到对应输入时调用自定义的函数(vicmd是normal模式下,visual是可视化模式下)
  zvm_bindkey vicmd 'L' jump_end_of_line
  zvm_bindkey vicmd 'H' jump_start_of_line
  zvm_bindkey visual 'L' jump_end_of_line
  zvm_bindkey visual 'H' jump_start_of_line
}