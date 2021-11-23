;; common
(add-hook 'prog-mode-hook 'show-paren-mode)
(add-hook 'prog-mode-hook 'electric-pair-mode)

;; magit
(use-package magit
  :custom
  (magit-diff-refine-hunk 'all)
  :custom-face
  (magit-diff-removed-highlight-face
   ((t (:foreground "#aa2222" :background "#ffdddd" :extend t))))
  :hook
  (magit-process-mode . goto-address-mode))

;; python
(use-package python
  :interpreter ("python3" . python-mode)
  :custom
  (comint-use-prompt-regexp 't)
  (comint-use-prompt-regexp ">>>"))

;; protobuf
(use-package protobuf-mode
  :mode "\\.proto\\'")

;; sql
(use-package sql
  :custom
  (sql-mysql-program "/usr/local/opt/mysql-client/bin/mysql"))

;; end
(provide 'my-coding-modes)
