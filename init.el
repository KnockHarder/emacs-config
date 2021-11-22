;; pacakge management
(defvar-local my-packages '(ivy
     company-statistics
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
     company))
(custom-set-variables
 '(package-selected-packages my-packages))
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
(custom-set-variables
 '(company-dabbrev-downcase nil)
 '(company-show-numbers 'left)
 '(company-idle-delay 0))
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
		 company-ispell))
  :custom-face
  (company-tooltip-selection ((t (:background "LightBlue1")))))
(use-package ivy
  :init
  (add-hook 'after-init-hook 'ivy-mode)
  :custom-face
  (ivy-minibuffer-match-face-2 ((t (:weight bold :background "plum1")))))

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
;; some local config
(defvar my-local-setting-file
  (expand-file-name "ignore.el" user-emacs-directory))
(when (file-exists-p my-local-setting-file)
  (load-file my-local-setting-file))

;; others
(custom-set-variables
 '(delete-by-moving-to-trash t)
 '(tab-always-indent 'complete))
