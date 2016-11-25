;;---------------------------------------------
;; 自定义编辑器操作
;;---------------------------------------------
;; 括号匹配
(show-paren-mode 1)

;; 设置缩进
(setq indent-tabs-mode t)
(setq default-tab-width 4)
(setq tab-width 4)

;; 支持和外部程序拷贝
(setq x-select-enable-clipboard t)

;; y/n 替代 yes/no
(fset 'yes-or-no-p 'y-or-n-p)

(provide 'init-custom)
