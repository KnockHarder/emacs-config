(defvar eaf-dir (expand-file-name "site-lisp/emacs-application-framework" user-emacs-directory))
(use-package eaf
  :load-path eaf-dir
  :config
  (defalias 'browse-web #'eaf-open-browser)
  )

(use-package eaf-browser
  :custom
  (browse-url-browser-function 'eaf-open-browser)
  (eaf-browser-continue-where-left-off t)
  (eaf-browser-enable-adblocker t)
  :config
  (eaf-bind-key nil "M-q" eaf-browser-keybinding)  
  :requires eaf
  )

(use-package eaf-pdf-viewer
  :config
  (eaf-bind-key scroll_up "C-n" eaf-pdf-viewer-keybinding)
  (eaf-bind-key scroll_down "C-p" eaf-pdf-viewer-keybinding)
  :requires eaf
  )

;; end
(provide 'my-eaf)
