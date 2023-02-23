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
  (add-hook 'after-init-hook 'company-statistics-mode))
(use-package ivy
  :init
  (add-hook 'after-init-hook 'ivy-mode))

;; loading config files
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load-file custom-file)
(defvar my-lisp-dir
  (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'load-path my-lisp-dir)
(require 'my-apperances)
(require 'my-coding-modes)
(require 'my-doc-modes)
(require 'my-input-methods)
(require 'my-eaf)
;; some local config
(defvar my-local-setting-file
  (expand-file-name "ignore.el" user-emacs-directory))
(when (file-exists-p my-local-setting-file)
  (load-file my-local-setting-file))
