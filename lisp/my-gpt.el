(defvar my-gpt-server "api.openai.com" "GPT server address")
(defvar my-gpt-model "gpt-3.5-turbo" "GPT model name")

;; local gpt like service
(require 'json)
(setq local-gpt-server "127.0.0.1:8080")

(let ((url (format "http://%s/v1/models" local-gpt-server)))
  (with-current-buffer (url-retrieve-synchronously url)
    (goto-char (point-min))
    (if (search-forward-regexp "^$" nil t)
        (let* ((status (url-http-symbol-value-in-buffer 'url-http-response-status (current-buffer)))
               (data (buffer-substring-no-properties (point) (point-max))))
          (if (= status 200) ; 检查是否成功
              (let* ((root (json-read-from-string data))
                     (models (cdr (assoc 'data root)))
                     (ids (mapcar (lambda (m)
                                    (cdr (assoc 'id m))) models))
                     (id-not-found t))
                (dolist (id '("gpt-4" "gpt-3.5-turbo"))
                  (when (and id-not-found (member id ids))
                    (setq my-gpt-server local-gpt-server)
                    (setq my-gpt-model id)
                    (setenv "OPENAI_KEY" "xxx")
                    (setq id-not-found nil)
                    )
                  )
                )
            (message "My GPT: No avliable local GPT service. status: %d" status)
            )
          )
      (message "Error: Unable to retrieve data from %s" url))))


;; set gpt packages if has OPENAI_KEY
(let ((api-key (getenv "OPENAI_KEY")))
  (if api-key
      (progn
        ;; gptel
        (use-package gptel
          :custom
          (gptel-host my-gpt-server)
          (gptel-model my-gpt-model)
          (gptel-api-key api-key)
          )
        ;; gpt commit
        (use-package gpt-commit
          :config
          (setq gpt-commit-openai-key api-key)
          (defun gpt-commit-generate-message-zh (callback)
            "Generate a commit message using GPT and pass it to the CALLBACK."
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
          (defun gpt-commit-openai-chat-completions-api-local (messages callback)
            "Call OpenAI's Chat Completions API with MESSAGES and CALLBACK."
            (let* ((headers `(("Content-Type" . "application/json")
                              ("Authorization" . ,(concat "Bearer " gpt-commit-openai-key))
                              )
                            )
                   (json-string (json-serialize `((model . ,my-gpt-model)
                                                  (messages . ,messages))))
                   (payload (encode-coding-string json-string 'utf-8))
                   (gpt-api (format "http://%s/v1/chat/completions" my-gpt-server))
                   )
              (setq callback-holder callback)
              (request gpt-api
                :type "POST"
                :headers headers
                :data payload
                :parser 'json-read
                :timeout 10
                :success
                (cl-function
                 (lambda (&key data &allow-other-keys)
                   (funcall callback-holder (gpt-commit-parse-response data))
                   )
                 )
                :error
                (cl-function
                 (lambda (&rest args &key data error-thrown &allow-other-keys)
                   (message "Error: %s %s" error-thrown data))))))
          (advice-add 'gpt-commit-generate-message :override 'gpt-commit-generate-message-zh)
          (advice-add 'gpt-commit-openai-chat-completions-api :override 'gpt-commit-openai-chat-completions-api-local)
          )
        )
    )
  )





;; end
(provide 'my-gpt)
