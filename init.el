(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-dabbrev-downcase nil)
 '(company-show-numbers ''left)
 '(delete-by-moving-to-trash t)
 '(tab-always-indent 'complete)
 '(package-selected-packages
   '(company-statistics
     kotlin-mode
     yaml-mode
     json-mode
     dot-mode
     posframe
     pdf-tools
     rime
     use-package
     edit-indirect
     protobuf-mode
     plantuml-mode
     magit
     pyim-wbdict
     pyim
     markdown-mode
     exec-path-from-shell
     company)))

;; pacakge management
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

;; set enviromennts
(setenv "LANG" "zh_CN.UTF-8")
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;; session
(savehist-mode 1)

;; enabel features
(put 'set-goal-column 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'scroll-left 'disabled nil)

;; company
(use-package company
  :init
  (add-hook 'after-init-hook 'global-company-mode)
  (add-hook 'after-init-hook 'company-statistics-mode)
  :config
  (add-to-list 'completion-styles 'flex)
  (add-to-list 'company-backends
	       '(company-capf
		 company-dabbrev-code
		 company-dabbrev-code
		 company-ispell)))
 
;; spell
(use-package ispell
  :custom
  (ispell-local-dictionary "en_US"))

;; loading config files
(defvar my-settings-dir
  (expand-file-name "settings" user-emacs-directory))
(add-to-list 'load-path my-settings-dir)
(require 'my-apperances)
(require 'my-coding-modes)
(require 'my-doc-modes)
(require 'my-input-methods)
