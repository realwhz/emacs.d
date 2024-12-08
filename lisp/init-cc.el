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
  (c-set-offset 'inline-open '0)
  (c-set-offset 'innamespace '0)
  (which-function-mode t)
  (modify-syntax-entry ?_ "w")
  (highlight-phrase "\\bFIXME\\b\\|\\bTODO\\b\\|\\bBUG\\b\\|\\bXXX\\b" '(hi-yellow))
  (electric-indent-mode -1))
  ;; don't use delete-trailing-whitespace because it would introduce too many unnecessary changes


(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)

(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))


(provide 'init-cc)
