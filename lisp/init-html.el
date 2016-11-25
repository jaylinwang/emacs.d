;; --------------------------------------------------------
;; html 模版支持
;;--------------------------------------------------------
(require-package 'web-mode)

(add-auto-mode 'web-mode "\\.phtml\\'")
(add-auto-mode 'web-mode "\\.tpl\\.php\\'")
(add-auto-mode 'web-mode "\\.[agj]sp\\'")
(add-auto-mode 'web-mode "\\.as[cp]x\\'")
(add-auto-mode 'web-mode "\\.erb\\'")
(add-auto-mode 'web-mode "\\.djhtml\\'")

(provide 'init-html)
