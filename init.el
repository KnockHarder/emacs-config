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
(when (daemonp)
  (exec-path-from-shell-initialize))
(lossage-size 10000)

;; session
(savehist-mode 1)
(add-hook 'server-after-make-frame-hook 'desktop-read)

;; enabel features
(put 'set-goal-column 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'scroll-left 'disabled nil)

;; company
(use-package company
  :init
  (add-hook 'after-init-hook 'global-company-mode)
  (add-hook 'after-init-hook 'company-statistics-mode)
  :bind
  ("M-/" . #'company-other-backend)
  :config
  (use-package company-tabnine))
(use-package company-tabnine
  :ensure t
  )

;; vertico
(use-package vertico
  :init
  (vertico-mode)
  )
(use-package savehist
  :init
  (savehist-mode))
(use-package emacs
  :init
  ;; Add prompt indicator to `completing-read-multiple'.
  ;; We display [CRM<separator>], e.g., [CRM,] if the separator is a comma.
  (defun crm-indicator (args)
    (cons (format "[CRM%s] %s"
                  (replace-regexp-in-string
                   "\\`\\[.*?]\\*\\|\\[.*?]\\*\\'" ""
                   crm-separator)
                  (car args))
          (cdr args)))
  (advice-add #'completing-read-multiple :filter-args #'crm-indicator)
  ;; Do not allow the cursor in the minibuffer prompt
  (setq minibuffer-prompt-properties
        '(read-only t cursor-intangible t face minibuffer-prompt))
  (add-hook 'minibuffer-setup-hook #'cursor-intangible-mode)
  ;; Emacs 28: Hide commands in M-x which do not work in the current mode.
  ;; Vertico commands are hidden in normal buffers.
  ;; (setq read-extended-command-predicate
  ;;       #'command-completion-default-include-p)
  ;; Enable recursive minibuffers
  (setq enable-recursive-minibuffers t))

;; orderless
(use-package orderless
  :ensure t
  :custom
  (completion-styles '(orderless basic))
  (completion-category-overrides '((file (styles basic partial-completion)))))

;; marginalia
(use-package marginalia
  ;; Either bind `marginalia-cycle' globally or only in the minibuffer
  :bind (
         :map minibuffer-local-map
         ("M-A" . marginalia-cycle))
  ;; The :init configuration is always executed (Not lazy!)
  :init
  (marginalia-mode))

;; region
(use-package expand-region
  :bind ("C-=" . er/expand-region))

;; parentheses
(use-package smartparens)

;; consult
(use-package consult
  :bind (("s-f" . consult-line)
         ))

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
(put 'downcase-region 'disabled nil)
