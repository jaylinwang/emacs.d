(add-hook 'after-init-hook 'global-linum-mode)

(defvar linum-current-line 1 "Current line number.")
(defvar linum-border-width 1 "Border width for linum.")

(defface linum-line-current
  `((t :inherit linum
	   :foreground "goldenrod"
	   :weight bold
	   ))
  "Face for displaying the current line number."
  :group 'linum)

(defface linum-line-normal
  `((t :inherit linum
	   :foreground "#333333"
	   ))
  "Face for displaying the current line number."
  :group 'linum)


(defadvice linum-update (before advice-linum-update activate)
  "Set the current line."
  (setq linum-current-line (line-number-at-pos)
		;; It's the same algorithm that linum dynamic. I only had added one
		;; space in front of the first digit.
		linum-border-width (number-to-string
							(+ 1 (length
								  (number-to-string
								   (count-lines (point-min) (point-max))))))))

(defun linum-highlight-current-line (line-number)
  "Highlight the current line number using `linum-current-line' face."
  (let ((face (if (= line-number linum-current-line)
				  'linum-line-current
				   'linum-line-normal
				)))
	(propertize (format (concat " %" linum-border-width "d  ") line-number)
				'face face)))

(setq linum-format 'linum-highlight-current-line)

(provide 'init-linum)
