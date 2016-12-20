;;----------------------------------------------------------------
;; 代码语法检查
;;----------------------------------------------------------------
(when (maybe-require-package 'flycheck)
  (add-hook 'after-init-hook 'global-flycheck-mode)
  (setq-default flycheck-disabled-checkers '(html-tidy))
  (setq flycheck-display-errors-function #'flycheck-display-error-messages-unless-error-list))

(defun reset-eslintrc()
  (let ((eslintrc-path (if (projectile-project-p)
					 (concat (projectile-project-root) ".eslintrc"))))
	(if (file-exists-p eslintrc-path)
		(progn
		  (message "eslintrc-path: %s" eslintrc-path)
		  (setq flycheck-eslintrc eslintrc-path)))))

(add-hook 'projectile-mode-hook 'reset-eslintrc)

(provide 'init-flycheck)
