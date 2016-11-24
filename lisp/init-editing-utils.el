;;--------------------------------------------
;; 编辑过程工具插件
;;--------------------------------------------

;; 注释选中行
(defun comment-selected-line (&optional arg)
  "Replacement for the comment-dwim command. If no region is selected and current line is not blank and we are not at the end of the line, then comment current line. Replaces default behaviour of comment-dwim, when it inserts comment at the end of the line."
  (interactive "*P")
  (comment-normalize-vars)
  (if (and (not (region-active-p)) (not (looking-at "[ \t]*$")))
	  (comment-or-uncomment-region (line-beginning-position) (line-end-position))
	(comment-dwim arg)))
(global-set-key "\M-;" 'comment-selected-line) 

;; 窗口切换
(require-package 'window-numbering)
(window-numbering-mode 1)

(provide 'init-editing-utils)
