;;--------------------------------------------
;; 项目结构
;;--------------------------------------------
(when (maybe-require-package 'projectile)
  (projectile-global-mode)
  (setq projectile-enable-caching t))

(provide 'init-project)
