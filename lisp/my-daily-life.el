;; agenda
(use-package org
  :hook
  (org-agenda-mode . olivetti-mode)
  :bind
  (:map org-mode-map
        ("C-<" . org-timestamp-down)
        ("C->" . org-timestamp-up))
  )

(use-package org-agenda
  :bind
  ("C-x a a" . org-agenda)
  (:map org-agenda-mode-map
        ("C-<" . org-agenda-date-earlier-minutes)
        ("C->" . org-agenda-date-later-minutes)
        ("C-{" . org-agenda-date-earlier-hours)
        ("C-{" . org-agenda-date-later-hours)
        )
  )

;; end
(provide 'my-daily-life)
