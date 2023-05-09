(sml/setup)

;; theme - leuven-theme
(load-theme 'leuven t)

;; layout - olivetti
(use-package olivetti
  :hook
  (org-mode . olivetti-mode))

;; all-the-icons-dired
(use-package all-the-icons-dired
  :hook
  (dired-mode . all-the-icons-dired-mode))

;; end
(provide 'my-apperances)
