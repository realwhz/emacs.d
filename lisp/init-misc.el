(show-paren-mode t)

(setq ispell-program-name "aspell")

(setq tags-case-fold-search t)

(put 'narrow-to-region 'disabled nil)

(setq make-backup-files nil)
(setq auto-save-default nil)
(setq backup-by-copying t)

;; (ffap-bindings)
;; (setq ffap-require-prefix t) ; C-u C-x C-f for example

(setq ido-enable-flex-matching t); flexibly match names
(setq ido-everywhere t); use ido-mode everywhere, in buffers and for finding files
(setq ido-use-filename-at-point 'guess); for find-file-at-point
(ido-mode t)

(xterm-mouse-mode t)

;;(desktop-save-mode t)

;; keep the phrase searched highlighted
;;(setq lazy-highlight-cleanup nil)

(require-package 'whole-line-or-region)

(whole-line-or-region-mode t)


(provide 'init-misc)
