(defconst MIN_VERSION "24.1")
(when (version<= emacs-version MIN_VERSION)
  (error "your emacs is too old ~~,suggest version is after %s" MIN_VERSION))

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'init-utils)

;; Calls (package-initialize)

(require 'init-elpa)
(require 'init-smex)
(require 'init-company)
(require 'init-fonts)
(require 'init-lua)
(require 'init-linum)
(require 'init-custom)

(require 'init-themes)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
	("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
