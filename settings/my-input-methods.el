;; emacs-rime
(setq rime-emacs-module-header-root (expand-file-name "manual-headers" user-emacs-directory))
(setq rime-user-data-dir "~/Library/Rime")
(add-to-list 'safe-local-variable-values
	     '(eval progn (activate-rime)))
(use-package rime
  :init
  (setq rime-disable-predicates '(rime-predicate-space-after-cc-p
				  rime-predicate-after-alphabet-char-p
				  rime-predicate-current-uppercase-letter-p
				  rime-predicate-prog-in-code-p
				  rime-predicate-punctuation-after-space-cc-p
				  rime-predicate-punctuation-line-begin-p))
  (defun activate-rime()
      (activate-input-method default-input-method))
  (add-hook 'markdown-mode-hook 'activate-rime)
  (add-hook 'plantuml-mode-hook 'activate-rime)
  :custom
  (default-input-method "rime")
  (rime-show-candidate 'posframe)
  (rime-librime-root (expand-file-name "librime/dist" user-emacs-directory))
  (rime-user-data-dir "~/Library/Rime")
  :custom-face
  (rime-default-face ((t (:background "gray100" :foreground "#333333")))))

;; end
(provide 'my-input-methods)
