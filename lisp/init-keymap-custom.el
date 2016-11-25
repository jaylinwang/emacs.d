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
(global-set-key (kbd "C-x C-p") 'find-file-in-project)

(provide 'init-keymap-custom)
