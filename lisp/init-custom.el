;;---------------------------------------------
;; 自定义编辑器操作
;;---------------------------------------------
;; 括号匹配
(show-paren-mode 1)

;; 设置缩进
(setq indent-tabs-mode nil)
(setq default-tab-width 4)
(setq tab-width 4)

;; 支持和外部程序拷贝
(setq x-select-enable-clipboard t)

;; y/n 替代 yes/no
(fset 'yes-or-no-p 'y-or-n-p)

;; 代码折叠支持
(add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)
(add-hook 'web-mode-hook 'hs-minor-mode)
(add-hook 'js2-mode-hook 'hs-minor-mode)

(provide 'init-custom)
