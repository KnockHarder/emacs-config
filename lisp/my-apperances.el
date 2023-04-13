(sml/setup)

;; theme - leuven-theme
(load-theme 'leuven t)

;; layout - olivetti
(use-package olivetti
  :hook
  (org-mode . olivetti-mode))

;; end
(provide 'my-apperances)
