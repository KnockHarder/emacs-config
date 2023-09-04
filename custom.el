(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-async-redisplay-delay 1)
 '(company-backends
   '((company-tabnine company-capf)
     (company-dabbrev-code company-etags company-keywords)
     company-semantic company-files
     (company-dabbrev company-ispell)))
 '(company-dabbrev-downcase nil)
 '(company-idle-delay 0.2)
 '(company-minimum-prefix-length 2)
 '(company-occurrence-weight-function 'company-occurrence-prefer-any-closest)
 '(company-require-match nil)
 '(company-search-regexp-function 'company-search-flex-regexp)
 '(company-show-quick-access 'left)
 '(company-tooltip-minimum-width 10)
 '(custom-safe-themes
   '("a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default))
 '(default-frame-alist '((font . "Menlo-14") (fullscreen . maximized)))
 '(delete-by-moving-to-trash t)
 '(dired-dwim-target t)
 '(dired-listing-switches "-alh")
 '(display-line-numbers 'relative)
 '(eaf-pdf-dark-mode "ignore")
 '(gc-cons-threshold 1000000000)
 '(gnus-secondary-select-methods nil)
 '(gnus-select-method '(nntp "news.gnus.org"))
 '(ibuffer-formats
   '((mark modified read-only locked " "
           (name 40 40 :left :elide)
           " "
           (mode 16 16 :center :elide)
           " " filename-and-process)
     (mark " "
           (name 16 -1)
           " " filename)))
 '(ispell-local-dictionary "english")
 '(line-number-mode nil)
 '(lsp-completion-enable-additional-text-edit t)
 '(lsp-file-watch-ignored-directories
   '("[/\\\\]\\.git\\'" "[/\\\\]\\.github\\'" "[/\\\\]\\.circleci\\'" "[/\\\\]\\.hg\\'" "[/\\\\]\\.bzr\\'" "[/\\\\]_darcs\\'" "[/\\\\]\\.svn\\'" "[/\\\\]_FOSSIL_\\'" "[/\\\\]\\.idea\\'" "[/\\\\]\\.ensime_cache\\'" "[/\\\\]\\.eunit\\'" "[/\\\\]node_modules" "[/\\\\]\\.yarn\\'" "[/\\\\]\\.fslckout\\'" "[/\\\\]\\.tox\\'" "[/\\\\]dist\\'" "[/\\\\]dist-newstyle\\'" "[/\\\\]\\.stack-work\\'" "[/\\\\]\\.bloop\\'" "[/\\\\]\\.metals\\'" "[/\\\\]target\\'" "[/\\\\]\\.ccls-cache\\'" "[/\\\\]\\.vscode\\'" "[/\\\\]\\.venv\\'" "[/\\\\]\\.deps\\'" "[/\\\\]build-aux\\'" "[/\\\\]autom4te.cache\\'" "[/\\\\]\\.reference\\'" "[/\\\\]\\.lsp\\'" "[/\\\\]\\.clj-kondo\\'" "[/\\\\]\\.shadow-cljs\\'" "[/\\\\]\\.babel_cache\\'" "[/\\\\]\\.cpcache\\'" "[/\\\\]\\checkouts\\'" "[/\\\\]\\.m2\\'" "[/\\\\]bin/Debug\\'" "[/\\\\]obj\\'" "[/\\\\]_opam\\'" "[/\\\\]_build\\'" "[/\\\\]\\.direnv\\'" "[/\\\\]\\.settings\\'" "[/\\\\]\\临时文件\\'"))
 '(lsp-file-watch-ignored-files
   '("[/\\\\]flycheck_[^/\\\\]+\\'" "[/\\\\]\\.#[^/\\\\]+\\'" "[/\\\\][^/\\\\]+~\\'" "[/\\\\][^/\\\\]+\\.iml\\'" ".reviewboardrc"))
 '(lsp-java-autobuild-enabled t)
 '(lsp-java-configuration-maven-user-settings "~/.m2/settings.xml")
 '(lsp-java-maven-download-sources t)
 '(lsp-java-max-concurrent-builds 8)
 '(lsp-java-vmargs
   '("-XX:+UseParallelGC" "-XX:GCTimeRatio=4" "-XX:AdaptiveSizePolicyWeight=90" "-Dsun.zip.disableMemoryMapping=true" "-Xmx6G" "-Xms2G"))
 '(lsp-ui-doc-alignment 'window)
 '(lsp-ui-doc-enable nil)
 '(lsp-ui-doc-position 'bottom)
 '(lsp-ui-sideline-show-code-actions nil)
 '(lsp-xml-server-vmargs
   ["-noverify" "-Xmx4g" "-XX:+UseG1GC" "-XX:+UseStringDeduplication"])
 '(markdown-split-window-direction 'below)
 '(next-line-add-newlines t)
 '(olivetti-body-width 120)
 '(org-agenda-custom-commands
   '(("a" "Agenda and all TODOs"
      ((agenda "" nil)
       (todo ""
             ((org-agenda-overriding-header "Unscheduled TODO")
              (org-agenda-skip-function
               '(org-agenda-skip-entry-if 'timestamp)))))
      nil)))
 '(org-image-actual-width nil)
 '(org-return-follows-link t)
 '(org-todo-keywords
   '((sequence "TODO" "DOING" "DONE")
     (sequence "BLOCK" "CANCEL")))
 '(package-selected-packages
   '(bufler gptel csv-mode origami nord-theme all-the-icons-dired all-the-icons org-mobile-sync org-modern helpful company-box leuven-theme olivetti smartparens expand-region marginalia consult orderless vertico adoc-mode bash-completion google-translate company-tabnine impatient-mode xml-format eaf-pdf-viewer eaf-browser eaf pipenv pyenv-mode lsp-jedi dart-mode lsp-mode lsp-treemacs hover lsp-dart smart-mode-line yasnippet-snippets string-inflection which-key lsp-ui yasnippet flycheck projectile lsp-java company-statistics kotlin-mode yaml-mode json-mode dot-mode posframe pdf-tools rime use-package edit-indirect protobuf-mode plantuml-mode magit pyim-wbdict pyim markdown-mode exec-path-from-shell company))
 '(python-shell-interpreter "pipenv")
 '(python-shell-interpreter-args "run python3 -i")
 '(python-shell-interpreter-interactive-arg "run python3 -i")
 '(safe-local-variable-values
   '((eval progn
           (activate-rime)
           (auto-fill-mode -1))
     (eval progn
           (activate-rime))))
 '(scroll-bar-mode nil)
 '(tab-always-indent 'complete)
 '(tool-bar-mode nil)
 '(vc-follow-symlinks nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(comint-highlight-prompt ((t (:inherit nil :foreground "yellow4" :weight bold))))
 '(company-tooltip-selection ((t (:background "LightBlue1"))))
 '(diff-refine-changed ((t (:background "#ffff55" :box (:line-width 1 :color "grey75" :style pressed-button)))))
 '(ivy-minibuffer-match-face-2 ((t (:weight bold :background "plum1"))))
 '(lsp-ui-doc-background ((t (:background "gray90"))))
 '(magit-diff-removed-highlight-face ((t (:foreground "#aa2222" :background "#ffdddd" :extend t))) t)
 '(rime-default-face ((t (:background "gray100" :foreground "#333333"))))
 '(show-paren-match ((t (:background "CadetBlue2" :box (:line-width 2 :color "turquoise" :style pressed-button))))))

