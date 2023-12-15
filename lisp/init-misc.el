(show-paren-mode 1)

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
  (xterm-mouse-mode 1))

;; don't open Ediff control panel in another frame
(setq ediff-window-setup-function 'ediff-setup-windows-plain)

;;(desktop-save-mode t)

;; keep the phrase searched highlighted
(setq lazy-highlight-cleanup nil)

(require-package 'dot-mode)
(add-hook 'find-file-hooks 'dot-mode-on)

;; show TAB with wide cursor
(setq x-stretch-cursor t)

;; turn on auto-revert mode globally
(global-auto-revert-mode 1)

;; turn on smooth scrolling
(pixel-scroll-precision-mode 1)

(defun region-as-shell-command (b e)
  "Run current line or selection in shell and insert output."
  (interactive
   (if (use-region-p)
       (list (region-beginning) (region-end))
     (let ((bounds (bounds-of-thing-at-point 'symbol)))
       (list (car bounds) (cdr bounds)))))
  (save-excursion
    (goto-char e)
    (unless (bolp) (insert "\n"))
    (shell-command (buffer-substring-no-properties b e) t t)))

(global-set-key (kbd "<mouse-2>") #'region-as-shell-command)
(define-key key-translation-map (kbd "<M-down-mouse-1>") (kbd "<mouse-2>"))

(defun tmp-buffer ()
  (interactive)
  (switch-to-buffer (make-temp-name "scratch")))


(provide 'init-misc)
