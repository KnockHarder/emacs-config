(let ((api-key (getenv "OPENAI_KEY")))
  (if api-key
      (progn
        ;; gptel
        (use-package gptel
          :custom
          (gptel-api-key api-key)        
          )
        ;; gpt commit
        (use-package gpt-commit
          :custom
          (gpt-commit-model-name "gpt-3.5-turbo-16k")
          :config
          (setq gpt-commit-openai-key api-key)          
          (defun gpt-commit-generate-message-zh (callback)
            (let* ((lines (magit-git-lines "diff" "--cached"))
                   (changes (string-join lines "\n"))
                   (messages `[
                               ((role . "system")
                                (content . ,gpt-commit-system-prompt-en))
                               ((role . "user")
                                (content . "你需要使用中文回答，准备好了吗？"))
                               ((role . "assistant")
                                (content . "准备好了，请给出你的 diff 内容，我会用中文进行回答"))
                               ((role . "user")
                                (content . ,changes))]))
              (gpt-commit-openai-chat-completions-api messages callback)))
          (advice-add 'gpt-commit-generate-message :override 'gpt-commit-generate-message-zh)
          )
        )
    )
  )

;; end
(provide 'my-gpt)
