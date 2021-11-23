(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-dabbrev-downcase nil)
 '(company-idle-delay 0)
 '(company-show-numbers 'left)
 '(default-frame-alist '((font . "Menlo-14") (fullscreen . maximized)))
 '(delete-by-moving-to-trash t)
 '(display-line-numbers 'relative)
 '(next-line-add-newlines t)
 '(package-selected-packages my-packages)
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
 '(show-paren-match-face ((t (:box (:line-width 2 :color "turquoise4" :style pressed-button) :background "CadetBlue2")))))
