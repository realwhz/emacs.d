(require-package 'helm)

;; Prefer Wilfred/ag.el
;;(require-package 'helm-ag)

(require-package 'helm-projectile)

(require-package 'helm-gtags)

(helm-mode t)

(define-key helm-map "<escape>" 'helm-keyboard-quit)

(define-key helm-comp-read-map "<escape>" 'helm-keyboard-quit)


(provide 'init-helm)
