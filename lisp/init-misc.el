(show-paren-mode t)

(setq ispell-program-name "aspell")

(setq tags-case-fold-search t)

(put 'narrow-to-region 'disabled nil)

(setq make-backup-files nil)
(setq auto-save-default nil)
(setq backup-by-copying t)

(ffap-bindings)
;;(setq ffap-require-prefix t) ; C-u C-x C-f for example

(xterm-mouse-mode t)

;;(desktop-save-mode t)

;; keep the phrase searched highlighted
;;(setq lazy-highlight-cleanup nil)

(require-package 'whole-line-or-region)

(whole-line-or-region-mode t)


(provide 'init-misc)
