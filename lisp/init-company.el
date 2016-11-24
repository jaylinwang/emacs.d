(when (maybe-require-package 'company)
  (add-hook 'after-init-hook 'global-company-mode)
  (after-load 'company
    (define-key company-mode-map (kbd "M-/") 'company-complete)
    (define-key company-active-map (kbd "M-/") 'company-select-next)
    (define-key company-active-map (kbd "M-.") 'company-select-previous)
    (global-set-key (kbd "M-C-/") 'company-complete)))

(provide 'init-company)
