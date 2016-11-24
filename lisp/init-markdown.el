;;----------------------------------------
;; markdown 配置
;;----------------------------------------

(require-package 'markdown-mode)
(add-auto-mode 'markdown-mode "\\.md$")
(add-auto-mode 'markdown-mode "\\.markdown$")

(require-package 'markdown-preview-mode)

(provide 'init-markdown)
