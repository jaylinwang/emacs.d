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
;; If emacs is run in a terminal, the clipboard- functions have no
;; effect. Instead, we use of xsel, see
;; http://www.vergenet.net/~conrad/software/xsel/ -- "a command-line
;; program for getting and setting the contents of the X selection"
(unless window-system
  (when (getenv "DISPLAY")
	;; Callback for when user cuts
	(defun xsel-cut-function (text &optional push)
	  ;; Insert text to temp-buffer, and "send" content to xsel stdin
	  (with-temp-buffer
		(insert text)
		;; I prefer using the "clipboard" selection (the one the
		;; typically is used by c-c/c-v) before the primary selection
		;; (that uses mouse-select/middle-button-click)
		(call-process-region (point-min) (point-max) "xsel" nil 0 nil "--clipboard" "--input")))
	;; Call back for when user pastes
	(defun xsel-paste-function()
	  ;; Find out what is current selection by xsel. If it is different
	  ;; from the top of the kill-ring (car kill-ring), then return
	  ;; it. Else, nil is returned, so whatever is in the top of the
	  ;; kill-ring will be used.
	  (let ((xsel-output (shell-command-to-string "xsel --clipboard --output")))
		(unless (string= (car kill-ring) xsel-output)
		  xsel-output )))
	;; Attach callbacks to hooks
	(setq interprogram-cut-function 'xsel-cut-function)
	(setq interprogram-paste-function 'xsel-paste-function)
	;; Idea from
	;; http://shreevatsa.wordpress.com/2006/10/22/emacs-copypaste-and-x/
	;; http://www.mail-archive.com/help-gnu-emacs@gnu.org/msg03577.html
	))

;; y/n 替代 yes/no
(fset 'yes-or-no-p 'y-or-n-p)

;; 代码折叠支持
(add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)
(add-hook 'web-mode-hook 'hs-minor-mode)
(add-hook 'js2-mode-hook 'hs-minor-mode)

(provide 'init-custom)
