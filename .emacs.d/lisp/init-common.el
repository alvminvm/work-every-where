;;==========================================
;; Author:  JeremyHe
;; Version: 1.0
;; Email: jeremyhe.cn@gmail.com
;; Blog: http://J-Cn.me
;; Last_modify: 2015-02-06
;; Description: Common settings
;;==========================================

;; don't show welcome again
(custom-set-variables '(inhibit-startup-screen t))
(custom-set-faces)

;; use y/n instead of yes/no
(fset 'yes-or-no-p 'y-or-n-p)

;; don't create *~ file
(setq make-backup-files nil)

;; 显示时间 display time
(display-time-mode 1)
(setq display-time-24hr-format t)

;; 移除工具栏 remove tool bar
(tool-bar-mode nil)

;; 高亮当前行 high light current line
(global-hl-line-mode 1)

;; 启动时的大小和屏幕中的位置
(setq default-frame-alist
     '((height . 35)(width . 100)(menuber-lines . 20)(tool-bar-lines . 0)))

;; 状态栏显示列号 show column number on status bar
(column-number-mode t)

;; 显示左侧的行号 show line num on the left
(global-linum-mode t)

;;自动断行，每行80个字符
(add-hook 'message-mode-hook (lambda ()
(setq fill-column 80)
(turn-on-auto-fill)))

;;显示细条光标
(setq-default cursor-type 'bar)   

;;显示文件标题
(setq frame-title-format "emacs@%b")    

;; ----------------- 全局按键设定 -------------------
;;撤销
(global-set-key (kbd "C-u") 'undo)   



(provide 'init-common)
