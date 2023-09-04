

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

(use-package nord-theme
  :custom
  (diff-refine-added (
                      (t (:foreground
                          "#A3BE8C"
                          :box
                          (:line-width (2 . 2) :color "#A3BE8C" :style pressed-button)
                          )
                         )
                      )
                     )
  )

;; end
(provide 'my-apperances)
