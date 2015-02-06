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

;; display time
(display-time-mode 1)
(setq display-time-24hr-format t)

;; show column number on status bar
(column-number-mode t)




(provide 'init-common)
