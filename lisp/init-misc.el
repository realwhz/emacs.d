(show-paren-mode t)

(setq ispell-program-name "aspell")

(setq tags-case-fold-search nil)

(setq dabbrev-case-fold-search nil)

(put 'narrow-to-region 'disabled nil)

(setq make-backup-files nil)
(setq auto-save-default nil)
(setq backup-by-copying t)

(setq dired-listing-switches "-alF")

(ffap-bindings)
(setq ffap-require-prefix t) ; C-u C-x C-f for example

;; (setq ido-enable-flex-matching t); flexibly match names
;; (setq ido-everywhere t); use ido-mode everywhere, in buffers and for finding files
;; (setq ido-use-filename-at-point 'guess); for find-file-at-point, conflict with ffap-bindings
;; (ido-mode t)

(unless (window-system)
  (xterm-mouse-mode t))

;; don't open Ediff control panel in another frame
(setq ediff-window-setup-function 'ediff-setup-windows-plain)

;;(desktop-save-mode t)

;; keep the phrase searched highlighted
(setq lazy-highlight-cleanup nil)

(require-package 'dot-mode)
(add-hook 'find-file-hooks 'dot-mode-on)

;; show TAB with wide cursor
(setq x-stretch-cursor t)


(provide 'init-misc)
