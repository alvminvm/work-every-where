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


(provide 'init-useful-function)
