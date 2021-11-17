;; plantuml
(use-package plantuml-mode
  :mode "\\.puml\\'"
  :init
  (setq plantuml-jar-path (expand-file-name "plantuml.jar" user-emacs-directory))
  (setq plantuml-default-exec-mode 'jar)
  :custom
  (plantuml-indent-level 2)
  :config
  (electric-indent-mode -1))

;; pdf-mode
(add-to-list 'auto-mode-alist '("\\.pdf\\'" . pdf-view-mode))

;; markdown mode
(use-package markdown-mode
  :config
  (add-to-list 'markdown-code-lang-modes '("protocol-buffer" . protobuf-mode)))

;; end
(provide 'my-doc-modes)
