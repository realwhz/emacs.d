(require-package 'evil)
(require-package 'evil-search-highlight-persist)

(evil-mode t)

(global-evil-search-highlight-persist t)

;;; ESC quits
;; (defun minibuffer-keyboard-quit ()
;;   "Abort recursive edit.
;; In Delete Selection mode, if the mark is active, just deactivate it;
;; then it takes a second \\[keyboard-quit] to abort the minibuffer."
;;   (interactive)
;;   (if (and delete-selection-mode transient-mark-mode mark-active)
;;       (setq deactivate-mark  t)
;;     (when (get-buffer "*Completions*") (delete-windows-on "*Completions*"))
;;     (abort-recursive-edit)))

;; (define-key evil-normal-state-map [escape] 'keyboard-quit)

;; (define-key evil-visual-state-map [escape] 'keyboard-quit)

;; (define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)

;; (define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)

;; (define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)

;; (define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)

;; (define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)

;; (global-set-key [escape] 'evil-exit-emacs-state)

;; (define-key evil-normal-state-map (kbd "C-]") 'helm-gtags-find-tag)
;; (define-key evil-normal-state-map (kbd "C-u C-]") 'helm-gtags-find-tag-other-window)
;; (define-key evil-normal-state-map (kbd "M-]") 'helm-gtags-find-rtag)
;; (define-key evil-normal-state-map (kbd "C-u M-]") 'helm-gtags-find-symbol)
;; (define-key evil-normal-state-map (kbd "C-t") 'helm-gtags-pop-stack)
(define-key evil-normal-state-map (kbd "M-.") 'xref-find-definitions)

;; (define-key evil-motion-state-map [down-mouse-1] nil)

;; (eval-after-load 'ggtags
;;   '(progn
;;      (evil-make-overriding-map ggtags-mode-map 'normal)
;;      ;; force update evil keymaps after ggtags-mode loaded
;;      (add-hook 'ggtags-mode-hook #'evil-normalize-keymaps)))

(eval-after-load 'evil-core
  '(evil-set-initial-state 'magit-popup-mode 'emacs))


(provide 'init-evil)
