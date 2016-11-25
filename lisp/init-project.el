(require-package 'projectile)
(projectile-mode 1)

(if (not (projectile-project-p))
	(error "project not init"))

(provide 'init-project)
