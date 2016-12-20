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
(require 'init-linum)
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
