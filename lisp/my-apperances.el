;; variables
(custom-set-variables
 '(default-frame-alist '((font . "Menlo-14") (fullscreen . maximized)))
 '(display-line-numbers 'relative)
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))

;; faces
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(diff-refine-changed ((t (:background "#ffff55" :box (:line-width 1 :color "grey75" :style pressed-button)))))
 '(mode-line (
	      (t (:background "gray91"
			      :foreground "black"
			      :box (:line-width -1 :style released-button)))))
 '(rime-default-face ((t (:background "gray100"
				      :foreground "#333333"))))
 '(show-paren-match-face ((t (:box (:line-width 2
						:color "turquoise4" 
						:style pressed-button)
			    :background "CadetBlue2")))))

;; end
(provide 'my-apperances)
