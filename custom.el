(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-backends
   '(company-capf
     (company-dabbrev-code company-etags company-keywords)
     company-semantic company-files company-gtags
     (company-dabbrev company-ispell)))
 '(company-dabbrev-downcase nil)
 '(company-idle-delay 0)
 '(company-occurrence-weight-function 'company-occurrence-prefer-any-closest)
 '(company-show-numbers 'left)
 '(completion-styles '(flex basic partial-completion emacs22))
 '(default-frame-alist '((font . "Menlo-14") (fullscreen . maximized)))
 '(delete-by-moving-to-trash t)
 '(dired-dwim-target t)
 '(display-line-numbers 'relative)
 '(ispell-local-dictionary "en_US")
 '(next-line-add-newlines t)
 '(package-selected-packages
   '(helm helm-lsp which-key lsp-ui yasnippet flycheck projectile lsp-java ivy company-statistics kotlin-mode yaml-mode json-mode dot-mode posframe pdf-tools rime use-package edit-indirect protobuf-mode plantuml-mode magit pyim-wbdict pyim markdown-mode exec-path-from-shell company))
 '(safe-local-variable-values
   '((eval progn
	   (activate-rime)
	   (auto-fill-mode -1))
     (eval progn
	   (activate-rime))))
 '(scroll-bar-mode nil)
 '(tab-always-indent 'complete)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-tooltip-selection ((t (:background "LightBlue1"))))
 '(diff-refine-changed ((t (:background "#ffff55" :box (:line-width 1 :color "grey75" :style pressed-button)))))
 '(ivy-minibuffer-match-face-2 ((t (:weight bold :background "plum1"))))
 '(magit-diff-removed-highlight-face ((t (:foreground "#aa2222" :background "#ffdddd" :extend t))))
 '(mode-line ((t (:background "gray91" :foreground "black" :box (:line-width -1 :style released-button)))))
 '(rime-default-face ((t (:background "gray100" :foreground "#333333"))))
 '(show-paren-match ((t (:background "CadetBlue2" :box (:line-width 2 :color "turquoise" :style pressed-button))))))

