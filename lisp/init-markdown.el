;;----------------------------------------
;; markdown 配置
;;----------------------------------------

(require-package 'markdown-mode)
(setq markdown-command "pandoc -s -c ~/.emacs.d/core/markdown-preview.css -f markdown -t html5 --mathjax --highlight-style pygments --standalone")

(provide 'init-markdown)
