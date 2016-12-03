;;-----------------------------------------------
;; 根据后缀自动匹配mode
;;-----------------------------------------------

;; javascript
(add-auto-mode 'js-mode "\\.js$")

;; html模版
(add-auto-mode 'web-mode "\\.phtml\\'")
(add-auto-mode 'web-mode "\\.tpl\\.php\\'")
(add-auto-mode 'web-mode "\\.[agj]sp\\'")
(add-auto-mode 'web-mode "\\.as[cp]x\\'")
(add-auto-mode 'web-mode "\\.erb\\'")
(add-auto-mode 'web-mode "\\.djhtml\\'")

;; markdown
(add-auto-mode 'markdown-mode "\\.md$")
(add-auto-mode 'markdown-mode "\\.markdown$")

;; vue
(add-auto-mode 'vue-mode "\\.vue$")

(provide 'init-auto-mode)
