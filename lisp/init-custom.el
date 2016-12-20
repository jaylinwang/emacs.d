;;---------------------------------------------
;; 自定义编辑器操作
;;---------------------------------------------
;; 括号匹配
(show-paren-mode 1)

;; 设置缩进
(setq default-tab-width 4)
(setq indent-tabs-mode nil)
(setq-default js2-basic-offset 4
	      tab-width 4
	      indent-tabs-mode nil)
(setq-default scss-basic-offset 4
	      tab-width 4
	      indent-tabs-mode nil)

;; 支持和外部程序拷贝
(setq x-select-enable-clipboard t)
(defun copy-from-osx ()
  (shell-command-to-string "pbpaste"))

(defun paste-to-osx (text &optional push)
  (let ((process-connection-type nil))
	(let ((proc (start-process "pbcopy" "*Messages*" "pbcopy")))
	  (process-send-string proc text)
	  (process-send-eof proc))))


(when (string= system-type "darwin")
  (setq interprogram-cut-function 'paste-to-osx)
  (setq interprogram-paste-function 'copy-from-osx))


;; y/n 替代 yes/no
(fset 'yes-or-no-p 'y-or-n-p)

;; 代码折叠支持
(add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)
(add-hook 'web-mode-hook 'hs-minor-mode)
(add-hook 'js2-mode-hook 'hs-minor-mode)

(provide 'init-custom)
