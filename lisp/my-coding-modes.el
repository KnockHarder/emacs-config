;; common
(add-hook 'prog-mode-hook 'show-paren-mode)
(add-hook 'prog-mode-hook 'electric-pair-mode)
(use-package lsp-mode
  :hook
  (
   (python-mode . lsp)
   (javascript-mode . lsp)
   (lsp-mode . lsp-enable-which-key-integration)
   )
  :bind (:map lsp-mode-map
              ("s-s" . yas-insert-snippet)
              :prefix "s-l s"
              :prefix-map show
              ("s" . lsp-treemacs-symbols)
              :prefix "s-l i"
              :prefix-map inflection
              ("c" . string-inflection-lower-camelcase)
              ("u" . string-inflection-underscore)
              ("," . string-inflection-camelcase)
              )
  :commands lsp
  )

;; magit
(use-package magit
  :ensure t
  :bind (("C-x g" . magit-status)
         )
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
  :bind (:map python-mode-map
              :prefix "C-c C-p"
              :prefix-map pipenv
              ("p" . run-python)
              )
  :custom
  (comint-use-prompt-regexp 't)
  (comint-use-prompt-regexp ">>>"))

(use-package lsp-jedi
  :ensure t)

(use-package pyenv-mode
  :config
  (setq exec-path (append exec-path '("~/.pyenv/bin")))
  )

(use-package pipenv
  :hook (python-mode . pipenv-mode)
  :init
  (setq
   pipenv-projectile-after-switch-function
   #'pipenv-projectile-after-switch-extended)
  )

;; protobuf
(use-package protobuf-mode
  :mode "\\.proto\\'")

;; sql
(use-package sql
  :custom
  (sql-mysql-program "/usr/local/opt/mysql-client/bin/mysql"))

;; json
(use-package json-mode
  :hook
  (json-mode . hs-minor-mode)
  (json-mode . electric-indent-mode)
  :bind
  ("C-c -" . hs-hide-block)
  ("C-c =" . hs-show-block)
  ("C-c 0" . hs-show-all)
  )

;; java
(use-package lsp-java
  :init
  ;; (add-hook 'java-mode-hook #'lsp)
  (setq read-process-output-max (* 100 1024 1024))
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
  (indent-tabs-mode nil)
  :bind (:map java-mode-map
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
              ("s" . lsp-java-convert-to-static-import)
	      )
  )
(use-package kotlin-mode
  :init
  (add-to-list 'exec-path (expand-file-name ".cache/lsp/kotlin/server/bin" user-emacs-directory)))
;; (add-hook 'kotlin-mode-hook #'lsp)
;; (setq read-process-output-max (* 100 1024 1024)))
(use-package projectile)
(use-package flycheck)
(use-package yasnippet :config (yas-global-mode))
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

;; dart
(use-package lsp-dart
  :init
  (setq lsp-dart-sdk-dir "~/repo/flutter/bin/cache/dart-sdk")
  (add-hook 'dart-mode-hook 'lsp)
  (setq gc-cons-threshold (* 100 1024 1024)
        read-process-output-max (* 1024 1024))
  :custom
  (lsp-dart-dap-flutter-hot-reload-on-save 't)
  )

;; electric
(use-package electric
  :hook ((python-mode . electric-indent-mode)
         (dart-mode . electric-indent-mode)
         (javascript-mode . electric-indent-mode)
         (emacs-lisp-mode . electric-indent-mode)
         )
  )

;; end
(provide 'my-coding-modes)
