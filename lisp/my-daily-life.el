;; agenda
(use-package org
  :hook
  (org-agenda-mode . olivetti-mode)
  :bind
  ("C-x a a" . org-agenda))

;; end
(provide 'my-daily-life)
