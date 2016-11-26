;;--------------------------------------------
;; 编辑过程工具插件
;;--------------------------------------------

;; 注释选中行
;; (defun comment-selected-line (&optional arg)
;;   "Replacement for the comment-dwim command. If no region is selected and current line is not blank and we are not at the end of the line, then comment current line. Replaces default behaviour of comment-dwim, when it inserts comment at the end of the line."
;;   (interactive "*P")
;;   (comment-normalize-vars)
;;   (if (and (not (region-active-p)) (not (looking-at "[ \t]*$")))
;; 	  (comment-or-uncomment-region (line-beginning-position) (line-end-position))
 ;; 	(comment-dwim arg)))
 
;; 窗口切换
(require-package 'window-numbering)
(window-numbering-mode 1)

;; 括号自动补全
(when (fboundp 'electric-pair-mode)
  (electric-pair-mode))
(when (eval-when-compile (version< "24.4" emacs-version))
    (electric-indent-mode 1))

;; 跳转至定义
(require-package 'dumb-jump)
(dumb-jump-mode 1)

;; emmet配置
(when (maybe-require-package 'emmet-mode)
  (add-hook 'web-mode-hook 'emmet-mode)
  (add-hook 'sgml-mode-hook 'emmet-mode)
  (add-hook 'css-mode-hook  'emmet-mode))

(provide 'init-editing-utils)
