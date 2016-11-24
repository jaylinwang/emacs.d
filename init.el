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
(require 'init-search)
(require 'init-editing-utils)
