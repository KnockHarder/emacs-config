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
  (setq read-process-output-max (* 100 1024 1024))
  :custom
  (indent-tabs-mode nil)
  :bind ("C-c C-f" . project-find-file))
(use-package kotlin-mode
  :init
  (add-to-list 'exec-path (expand-file-name ".cache/lsp/kotlin/server/bin" user-emacs-directory)))
  ;; (add-hook 'kotlin-mode-hook #'lsp)
  ;; (setq read-process-output-max (* 100 1024 1024)))
(use-package projectile)
(use-package flycheck)
(use-package yasnippet :config (yas-global-mode))
(use-package lsp-mode
  :hook
  ((lsp-mode . lsp-enable-which-key-integration))
  :custom
  (lsp-java-format-settings-url
   (lsp--path-to-uri
    (expand-file-name "config/my-eclipse-java-style.xml" user-emacs-directory)))
  (lsp-java-format-settings-profile "like-idea")
  (dap-register-debug-template
  "Java Attach"
  (list :name "Java Attach"
        :type "java"
        :request "attach"
        :hostName nil
        :port nil))
  :bind (:map lsp-mode-map
              ("s-s" . yas-insert-snippet)
              :prefix "s-l s"
              :prefix-map show/statement
              ("s" . lsp-treemacs-symbols)
              ("l" . lsp-java-assign-statement-to-local)
              ("f" . lsp-java-assign-statement-to-field)
              :prefix "s-l e"
              :prefix-map extract
              ("l" . lsp-java-extract-to-local-variable)
              ("c" . lsp-java-extract-to-constant)
              ("m" . lsp-java-extract-method)
              :prefix "s-l i"
              :prefix-map inflection
              ("c" . string-inflection-lower-camelcase)
              ("u" . string-inflection-underscore)
              ("," . string-inflection-camelcase)
              :prefix "s-l s-i"
              :prefix-map import
              ("s" . lsp-java-convert-to-static-import)))
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
(use-package lsp-treemacs
  :config
  (lsp-treemacs-sync-mode))

;; protobuf
(use-package protobuf-mode
  :init
  (defconst my-protobuf-style
    '((c-basic-offset . 4)
      (indent-tabs-mode . nil)))
  (add-hook 'protobuf-mode-hook
	    (lambda () (c-add-style "my-style" my-protobuf-style t)))
  :bind (:map protobuf-mode-map
              :prefix "C-c i"
              :prefix-map inflection
              ("c" . string-inflection-camelcase)
              ("u" . string-inflection-underscore)))

;; end
(provide 'my-coding-modes)
