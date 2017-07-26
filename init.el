;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(defconst MIN_VERSION "24.4")
(when (version<= emacs-version MIN_VERSION)
  (error "your emacs is too old ~~,suggest version is after %s" MIN_VERSION))

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'init-utils)

(require 'init-elpa)
(require 'init-smex)
(require 'init-company)
(require 'init-fonts)

(require 'init-project)
;;(require 'init-linum) //代码行数
(require 'init-custom)
(require 'init-themes)
(require 'init-editing-utils)
(require 'init-git)
(require 'init-flycheck)
(require 'init-beautify)

;; 语言支持
(require 'init-lua)
(require 'init-markdown)
(require 'init-js)
(require 'init-html)
(require 'init-vue)
(require 'init-css)
(require 'init-yaml)

;; 用户自定义
(require 'init-auto-mode)
(require 'init-keymap-custom)

(load-theme 'solarized-light t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (yaml-mode scss-mode vue-mode web-mode js2-mode markdown-mode lua-mode web-beautify flycheck magit git-timemachine git-messenger gitconfig-mode gitignore-mode git-blamed emmet-mode dumb-jump window-numbering spacemacs-theme solarized-theme projectile default-text-scale company smex))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
