(require 'tabbar)
(tabbar-mode 1)
(global-set-key [(meta n)] 'tabbar-forward)
(global-set-key [(meta p)] 'tabbar-backward)
; close default tabs，and move all files into one group
(setq tabbar-buffer-list-function
    (lambda ()
        (remove-if
          (lambda(buffer)
             (find (aref (buffer-name buffer) 0) " *"))
          (buffer-list))))
(setq tabbar-buffer-groups-function
      (lambda()(list "All")))

;; USEFUL: set tabbar's separator gap
(custom-set-variables '(tabbar-separator (quote (0.5))))


(provide 'init-tabbar)
