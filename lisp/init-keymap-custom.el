;;-------------------------------------------------
;; 自定义快捷键
;;-------------------------------------------------

;; git操作
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x s") 'magit-stage)
(global-set-key (kbd "C-x c") 'magit-commit)
(global-set-key (kbd "C-x j") 'magit-pull)
(global-set-key (kbd "C-x k") 'magit-push)

;; 搜索相关
(global-set-key (kbd "C-x C-p") 'projectile-command-map)

;; 编辑相关
(global-set-key (kbd "C-M-j") 'dumb-jump-go-other-window)
(global-set-key (kbd "C-M-i") 'dumb-jump-quick-look)
(global-set-key (kbd "C-M-o") 'dumb-jump-go)
(global-set-key (kbd "C-M-p") 'dumb-jump-back)

;; 代码格式化
(require 'web-beautify) ;; Not necessary if using ELPA package
(eval-after-load 'js2-mode
  '(define-key js2-mode-map (kbd "C-c C-b a") 'web-beautify-js))
;; Or if you're using 'js-mode' (a.k.a 'javascript-mode')
(eval-after-load 'js
  '(define-key js-mode-map (kbd "C-c C-b a") 'web-beautify-js))

(eval-after-load 'json-mode
  '(define-key json-mode-map (kbd "C-c C-b a") 'web-beautify-js))

(eval-after-load 'sgml-mode
  '(define-key html-mode-map (kbd "C-c C-b a") 'web-beautify-html))

(eval-after-load 'web-mode
  '(define-key web-mode-map (kbd "C-c C-b a") 'web-beautify-html))

(eval-after-load 'css-mode
  '(define-key css-mode-map (kbd "C-c C-b a") 'web-beautify-css))

(global-set-key (kbd "C-c C-b j") 'web-beautify-js)
(global-set-key (kbd "C-c C-b c") 'web-beautify-css)
(global-set-key (kbd "C-c C-b h") 'web-beautify-html)

(provide 'init-keymap-custom)
