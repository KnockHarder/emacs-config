;; plantuml
(use-package plantuml-mode
  :mode "\\.puml\\'"
  :init
  (setq plantuml-jar-path (expand-file-name "plantuml.jar" user-emacs-directory))
  (setq plantuml-default-exec-mode 'jar)
  (defun set-plantuml-default-comment()
    (setq comment-start ": ")
    (setq comment-start-skip ": ")
    (setq comment-end ""))
  (add-hook 'plantuml-mode-hook
            (lambda ()
              (setq plantuml-output-type "png"))
            )
  :custom
  (plantuml-indent-level 2)
  :config
  (electric-indent-mode -1)
  (modify-syntax-entry ?: "<" plantuml-mode-syntax-table)
  :hook
  (plantuml-mode . set-plantuml-default-comment)
  :bind (:map plantuml-mode-map
	      ("C-c p" . plantuml-preview-buffer)))

;; pdf-mode
(add-to-list 'auto-mode-alist '("\\.pdf\\'" . pdf-view-mode))

;; markdown mode
(use-package markdown-mode
  :config
  (pyenv-mode -1)
  (add-to-list 'markdown-code-lang-modes '("protocol-buffer" . protobuf-mode))
  )

;; html
(defun impatient-markdown-html ()
  (interactive)
  (imp-set-user-filter
   (lambda (buffer)
     (princ (with-current-buffer buffer
              (format
               "<!DOCTYPE html>\
<html>\
<title>Impatient Markdown</title>\
<xmp theme=\"united\" style=\"display:none;\"> %s  </xmp>\
<script src=\"https://cdn.jsdelivr.net/gh/Naereen/StrapDown.js@master/strapdown.min.js\"></script>\
</html>" (buffer-substring-no-properties (point-min) (point-max)))
              )
            (current-buffer)
            )
     )
   )
  )

(defvar impatient-mode-home (expand-file-name "impatient-mode" user-emacs-directory))
(use-package impatient-mode
  :load-path impatient-mode-home
  :init
  (add-hook 'markdown-mode-hook
            (lambda ()
              (impatient-mode)
              (imp-set-user-filter 'markdown-html)
              )
            )
  )

;; org-modern
(use-package org-modern
  :hook
  (org-mode . org-modern-mode))

;; end
(provide 'my-doc-modes)
