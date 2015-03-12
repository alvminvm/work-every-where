;;==========================================
;; Author:  JeremyHe
;; Version: 1.0
;; Email: jeremyhe.cn@gmail.com
;; Blog: http://J-Cn.me
;; Last_modify: 2015-02-06
;; Description: define some useful function, and invoke by M-x func-name
;;==========================================

;;------------------------------------------
;; insert formated time string
;;------------------------------------------
(defun date () 
"Insert the date in current position. e.g 2015-02-06" 
(interactive) 
(insert (format-time-string "%Y-%m-%d"))) 

(defun now () 
"Insert the current time in current position. e.g 2015-02-06 12:35:05" 
(interactive) 
(insert (format-time-string "%Y-%m-%d %H:%M:%S"))) 


;; c-w 和 m-w在未选中的时候直接复制当前行和剪切当前行
(defadvice kill-ring-save (before slickcopy activate compile)  
    (interactive  
     (if mark-active (list (region-beginning) (region-end))  
       (list (line-beginning-position)  
             (line-beginning-position 2)))))  
  (defadvice kill-region (before slickcut activate compile)  
    (interactive  
     (if mark-active (list (region-beginning) (region-end))  
       (list (line-beginning-position)  
            (line-beginning-position 2))))) 

(provide 'init-useful-function)
