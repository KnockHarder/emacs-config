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
 '(company-minimum-prefix-length 4)
 '(company-occurrence-weight-function 'company-occurrence-prefer-any-closest)
 '(company-show-numbers 'left)
 '(completion-styles '(flex basic partial-completion emacs22))
 '(custom-safe-themes
   '("a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default))
 '(default-frame-alist '((font . "Menlo-14") (fullscreen . maximized)))
 '(delete-by-moving-to-trash t)
 '(desktop-save-mode t)
 '(dired-dwim-target t)
 '(display-line-numbers 'relative)
 '(gc-cons-threshold 1000000000)
 '(ispell-local-dictionary "en_US")
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
 '(lsp-ui-doc-position 'bottom)
 '(lsp-ui-sideline-show-code-actions nil)
 '(lsp-xml-server-vmargs
   ["-noverify" "-Xmx4g" "-XX:+UseG1GC" "-XX:+UseStringDeduplication"])
 '(next-line-add-newlines t)
 '(package-selected-packages
   '(smart-mode-line yasnippet-snippets string-inflection helm helm-lsp which-key lsp-ui yasnippet flycheck projectile nil lsp-java ivy company-statistics kotlin-mode yaml-mode json-mode dot-mode posframe pdf-tools rime use-package edit-indirect protobuf-mode plantuml-mode magit pyim-wbdict pyim markdown-mode exec-path-from-shell company))
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
 '(lsp-ui-doc-background ((t (:background "gray90"))))
 '(magit-diff-removed-highlight-face ((t (:foreground "#aa2222" :background "#ffdddd" :extend t))))
 '(mode-line ((t (:background "gray91" :foreground "black" :box (:line-width -1 :style released-button)))))
 '(rime-default-face ((t (:background "gray100" :foreground "#333333"))))
 '(show-paren-match ((t (:background "CadetBlue2" :box (:line-width 2 :color "turquoise" :style pressed-button))))))

