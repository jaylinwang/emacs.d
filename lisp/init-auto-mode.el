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
(add-auto-mode 'web-mode "\\.hbs\\'")

;; markdown
(add-auto-mode 'markdown-mode "\\.md$")
(add-auto-mode 'markdown-mode "\\.markdown$")
(add-auto-mode 'gfm-mode "\\.markdown$")
(add-auto-mode 'gfm-mode "\\.md$")

;; vue
(add-auto-mode 'vue-mode "\\.vue$")


;; scss
(add-auto-mode 'scss-mode "\\.scss$")
(add-auto-mode 'scss-mode "\\.sass$")

(provide 'init-auto-mode)
