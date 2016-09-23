(setq default-major-mode 'text-mode)


;; friendly to very long lines
(add-hook 'text-mode-hook
          (lambda ()
            (visual-line-mode t)
            (turn-off-auto-fill)))


(provide 'init-text)
