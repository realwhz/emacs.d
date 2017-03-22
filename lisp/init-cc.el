(add-hook 'c-initialization-hook
          (lambda ()
            (define-key c-mode-base-map "\C-m" 'c-context-line-break)))


;; let hide-ifdefs shadow instead of hide inactive part
(add-hook 'hide-ifdef-mode-hook
          (lambda ()
            (setq hide-ifdef-initially t)
            (setq hide-ifdef-shadow t)
            (hide-ifdefs)))


(defun my-c-mode-common-hook ()
  (c-set-style "stroustrup")
  (setq tab-width 4
        c-basic-offset 4
        indent-tabs-mode nil
        c-eletric-pound-behavior '(alignleft))
  (c-set-offset 'arglist-intro 'c-lineup-arglist-intro-after-paren)
  (c-set-offset 'arglist-close 'c-lineup-arglist-close-under-paren)
  (c-set-offset 'inline-open 0)
  (c-toggle-hungry-state t)
  (which-function-mode t)
  (modify-syntax-entry ?_ "w")
  (ggtags-mode t))


(add-hook 'c-mode-hook 'my-c-mode-common-hook)

(add-hook 'c++-mode-hook 'my-c-mode-common-hook)

(provide 'init-cc)
