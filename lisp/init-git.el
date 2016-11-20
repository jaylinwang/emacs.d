;;-------------------------------------------------
;; git操作
;;-------------------------------------------------
(require-package 'git-blamed)
(require-package 'gitignore-mode)
(require-package 'gitconfig-mode)
(require-package 'git-messenger)
(maybe-require-package 'git-timemachine)

(maybe-require-package 'magit)

(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x s") 'magit-stage)
(global-set-key (kbd "C-x c") 'magit-commit)
(global-set-key (kbd "C-x j") 'magit-pull)
(global-set-key (kbd "C-x k") 'magit-push)

(provide 'init-git)
