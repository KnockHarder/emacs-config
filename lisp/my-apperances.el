

;; theme - leuven-theme
(load-theme 'nord t)

;; layout - olivetti
(use-package olivetti
  :hook
  (org-mode . olivetti-mode)
  (prog-mode . olivetti-mode))

;; all-the-icons-dired
(use-package all-the-icons-dired
  :hook
  (dired-mode . all-the-icons-dired-mode))

;; end
(provide 'my-apperances)
