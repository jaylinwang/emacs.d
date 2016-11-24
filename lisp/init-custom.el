(defun qiang-comment-dwim-line (&optional arg)
  "Replacement for the comment-dwim command. If no region is selected and current line is not blank and we are not at the end of the line, then comment current line. Replaces default behaviour of comment-dwim, when it inserts comment at the end of the line."
  (interactive "*P")
  (comment-normalize-vars)
  (if (and (not (region-active-p)) (not (looking-at "[ \t]*$")))
	  (comment-or-uncomment-region (line-beginning-position) (line-end-position))
	(comment-dwim arg)))
(global-set-key "\M-;" 'qiang-comment-dwim-line)

;; 括号匹配
(show-paren-mode 1)

;; 设置缩进
(setq indent-tabs-mode t)
(setq default-tab-width 4)
(setq tab-width 4)

;; 支持和外部程序拷贝
(setq x-select-enable-clipboard t)

;; use y/n instand of yes/no
(fset 'yes-or-no-p 'y-or-n-p)

(provide 'init-custom)
