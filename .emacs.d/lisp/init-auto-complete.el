(require 'auto-complete-config)

(ac-config-default)

(add-to-list 'ac-modes 'fundamental-mode)
(add-to-list 'ac-modes 'org-mode)
(add-to-list 'ac-modes 'shell-mode)

;; Show menu 0.5 second later
(setq ac-auto-show-menu 0.5)
;; 选择菜单项的快捷键
(setq ac-use-menu-map t)
(define-key ac-menu-map "\C-n" 'ac-next)
(define-key ac-menu-map "\C-p" 'ac-previous)


(provide 'init-auto-complete)
