(require-package 'lsp-mode)
(require-package 'lsp-treemacs)
(require-package 'ccls)

(setq gc-cons-threshold 100000000)
(setq read-process-output-max (* 1024 1024))

(setq lsp-clients-ccls-executable "/home/hwang/bin/ccls")

(with-eval-after-load 'lsp-mode
  (lsp-register-client
   (make-lsp-client
    :new-connection (lsp-tramp-connection lsp-clients-ccls-executable)
    :major-modes '(c-mode c++-mode)
    :remote? t
    :server-id 'ccls-tramp
    :priority 1
    :download-server-fn (lambda (_client callback error-callback _update?)
                          (funcall callback)))))

(with-eval-after-load 'tramp
  (progn
    (add-to-list 'tramp-remote-path "/home/hwang/bin")
    (add-to-list 'tramp-remote-path 'tramp-own-remote-path)))

(add-hook 'c-mode-hook #'lsp)
(add-hook 'c++-mode-hook #'lsp)

;; (setq lsp-log-io t)  ;; enable for debug

(setq tramp-async-threads 8)
(setq tramp-inline-compress-start-size 1000000)
(setq tramp-persistency-file-name "~/.emacs.d/tramp")
(setq tramp-default-method "ssh")
(setq remote-file-name-inhibit-cache nil)
(setq tramp-completion-reread-directory-timeout nil)
(setq tramp-copy-size-limit 10000000)
(setq vc-handled-backends nil)
(setq tramp-verbose 1)

(provide 'init-lsp)
