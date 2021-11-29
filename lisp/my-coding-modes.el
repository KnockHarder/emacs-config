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

;; java
(use-package lsp-java
  :init
  (add-hook 'java-mode-hook #'lsp)
  (setq read-process-output-max (* 1024 1024)))
(use-package projectile)
(use-package flycheck)
(use-package yasnippet :config (yas-global-mode))
(use-package lsp-mode
  :hook
  ((lsp-mode . lsp-enable-which-key-integration))
  :config
  (setq lsp-completion-enable-additional-text-edit nil))
(use-package hydra)
(use-package lsp-ui)
(use-package which-key
  :config
  (which-key-mode))
(use-package dap-mode
  :after
  lsp-mode
  :config
  (dap-auto-configure-mode))
(use-package dap-java
  :ensure nil)
(use-package helm-lsp)
(use-package helm
  :config (helm-mode))
(use-package lsp-treemacs)

;; protobuf
(use-package protobuf-mode
  :init
  (defconst my-protobuf-style
    '((c-basic-offset . 4)
      (indent-tabs-mode . nil)))
  (add-hook 'protobuf-mode-hook
			(lambda () (c-add-style "my-style" my-protobuf-style t))))

;; end
(provide 'my-coding-modes)
